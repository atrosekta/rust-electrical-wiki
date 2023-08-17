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

printf "\nsearching for bad casing in links...\n"
for file in content/*.md
do
	badlinks=$( grep -PnTo '#[-\w]+\s*\)' "$file" | grep "[A-Z]") \
		|| continue
	printf "%s\n\e[31m%s\e[0m\n" "$file" "$badlinks"
	HASBADLINKS=1
done

[ -z $HASBADLINKS ] \
	&& echo -e "  \e[32mfound none.\e[0m" \
	|| echo -e "ERROR FOUND SOME !\e[0m"

