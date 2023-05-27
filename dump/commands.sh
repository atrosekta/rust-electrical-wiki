exit 1 # dont execut this file directly

find content -type f -name '*.md' -exec sed -i 's/Identifier    /Item ID       /g' {} \;
