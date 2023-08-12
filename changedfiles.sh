#!/bin/bash

lstcmtfile=lastuploadedcommit
lstcmdfile=ftp.last

# git rev-parse HEAD > $lstcmtfile ; exit
cd $(git rev-parse --show-toplevel)
# read lstcmt <<< $( git rev-parse data )
read lstcmt < $lstcmtfile
mapfile gitfiles <<< \
	"$(git --no-pager diff --name-status $lstcmt HEAD)"

putfile() {
	target=
	[[ $1 =~ global/* ]] && target=" global"
	[[ $1 =~ content/images/* ]] && target=" images"
	echo "put '$1'$target"
}

rmfile() {
	file=${1#content/}
	file=${file#html/}
	echo "rm  '$file'"
}

for line in "${gitfiles[@]}"
do
	read -r stat file <<< "$line"
	case "$file" in
		html/*.html      | \
		content/images/* | \
		global/*         ) ;;
		* ) continue ;;
	esac
	case "${stat:0:1}" in
		M | A )
			putfile "$file" ;;
		D )
			rmfile "$file" ;;
		R )
			read -r old new <<< "$file"
			rmfile "$old"
			putfile "$new"
			;;
		* ) echo "!!! $stat  $file
| C | copy-edit   | File has been copied and modified
| R | rename-edit | File has been renamed and modified
| D | deleted     | File has been deleted
| U | unmerged    | File has conflicts after a merge"
exit 1 ;;
	esac

done > $lstcmdfile
cat $lstcmdfile

# cat $lstcmdfile
