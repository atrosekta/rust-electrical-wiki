#!/bin/bash

ftpcmdfile=ftp.last
commitfile=lastuploadedcommit

currcommit=$(git rev-parse HEAD)
lastcommit=$(<$commitfile)

if [ "$1" == "-n" ]; then
	commitfile=/dev/null
else
	./git-ftp-diff.sh $lastcommit $currcommit > $ftpcmdfile
fi

[ -z "$(<$ftpcmdfile)" ] && {
	echo nothing to upload.
	exit 0
}

read -r -d '' user host pass < .creds
SSHPASS=$pass sshpass -e sftp -oBatchMode=no -b - \
	$user@$host < <(grep -v '^#' $ftpcmdfile) \
	&& echo $currcommit > $commitfile

