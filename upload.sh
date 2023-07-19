#!/bin/bash

cmdfile=ftp.last
lstcmtfile=lastuploadedcommit

./changedfiles.sh
[[ -z $(<$cmdfile) ]] && exit
read -r -d '' user host pass < .creds
export SSHPASS=$pass
sshpass -e sftp -oBatchMode=no -b - \
	$user@$host < $cmdfile \
	&& git rev-parse HEAD > $lstcmtfile
