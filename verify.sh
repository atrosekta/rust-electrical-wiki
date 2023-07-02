#!/bin/bash

MRKDWNDIR=content
mapfile -t files <<< $(find "$MRKDWNDIR" -maxdepth 1 -type f)

for file in "${files[@]}"; do
	file="${file#"$MRKDWNDIR/"}"
	file="${file/%.md/.html}"
	grep -Fq "$file" navbar.md && continue
	echo -e "WARNING file is not in sidebar :\t" "$file"
	cat "${files[@]}" | grep -Fq "$file" && continue;
	echo -e "\tneither stated in any other file"
done

