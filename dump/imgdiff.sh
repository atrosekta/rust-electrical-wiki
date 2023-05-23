#!/bin/bash

fmt="%s\n"
silent=
olddir=../content/images
newdir=../ign.zip/images
cachefile=new-images-list-$(date '+%F-%H-%M-%S-%N')

while [ $#  -gt 0 ] 
do case "$1" in
	"-n" | "--new" ) newdir="$2"; shift;;
	"-o" | "--old" ) olddir="$2"; shift;;
	"-s" | "--silent") silent=1; ;;
	"-f" | "--file" | "--out" ) outfile="$2"; shift;;
	* ) echo "unknown '$1', aborpting"; exit 1 ;;
esac; shift; done

exist(){
	[[ -e $1 ]] && return 0
	echo "$2 folder doesnt exist ! '$newdir'"
	return 1
}

exist "$olddir" "old" || err=1
exist "$newdir" "new" || err=1
[[ -n $err ]] && exit 1

olds=( $olddir/* )
news=( $newdir/* )

for new in "${news[@]}"; do
	is=;
	for old in "${olds[@]}"; do
		cmp -s $old $new || continue
		is=$old
		break
	done
	[[ -n $is ]] && continue
	[[ -z $silent ]] && printf "$fmt" "$new" > /dev/tty
	[[ -n $cachefile ]] && printf "$fmt" "$new" >> "$cachefile"
done

[[ -n $outfile ]] && mv "$cachefile" "$outfile" || {
	echo;echo "output automatically saved as '$cachefile'"
	read -r -n 1 -p "    delete it ? y/n  " del; echo
	[[ $del == y ]] && rm "$cachefile"
}
