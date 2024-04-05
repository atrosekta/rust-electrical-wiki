#!/bin/bash

oldcommit="$1"
newcommit="$2"

getremotepath() {
	case "$1" in
		html/*.html )      echo "${1#html/}" ;;
		content/images/* ) echo "${1#content/}" ;;
		global/* )         echo "${1}" ;;
		* ) return 1;;
	esac
}

cd "$(git rev-parse --show-toplevel)" \
	|| { echo cant find root repo. >&2; exit 1; }

while read -r -d '' stat file
do
	remote="$(getremotepath "$file")" || continue
	case "$stat" in
		M | A )
			echo "put '$file' '$remote'" ;;
		D )
			echo "rm '$remote'" ;;
		R )
			echo "rm '$remote'"
			read -r -d '' file
			remote="$(getremotepath "$file")" || continue
			echo "put '$file' '$remote'" ;;
		* )
			{ cat >&2; exit 1; } <<< "
ERROR unhandled status: '$stat' '$file'
	C = copied,
	T = filetype changed,
	U = unmerged,
	X = unknown,
	B = broken pairing,
accepted:
	A = added,
	M = modified,
	D = deleted,
	R = renamed,
" ;;
	esac
done < <(git --no-pager diff --name-status -z "$oldcommit" "$newcommit")
