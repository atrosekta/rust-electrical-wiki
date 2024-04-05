#!/bin/bash

files=(content/*.md)

for file in "${files[@]}"
do
	file="${file#content/}"
	file="${file/%.md/.html}"
	grep -Fq "$file" navbar.md && continue
	echo "FILE NOT IN SIDEBAR: $file"
	grep -Fq "$file" "${files[@]}" && continue;
	echo -e "\tNEITHER LINKED IN ANY OTHER PAGE"
done >&2

# i dont remember what error in links this is supposed to catch exactly,
# but we had it only once, before adding that check.
# and i thinks this also flag some good links ...
for file in "${files[@]}"
do
	badlinks=$(grep -PnTo '#[-\w]+\s*\)' "$file" | grep "[A-Z]") \
		|| continue
	echo -e "BAD LINK FOUND: $file\n\t$badlinks"
done

