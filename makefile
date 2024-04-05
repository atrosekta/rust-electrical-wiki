
MRKDWNDIR := content
TEXTFILES := $(wildcard ${MRKDWNDIR}/*.md)
HTMLFILES := $(TEXTFILES:${MRKDWNDIR}/%.md=html/%.html)

.PHONY: build bar html fullbook clean verify

build: bar html verify

bar: global/navbar.html
html: ${HTMLFILES}
fullbook: html/fullbook.html

clean:
	rm -f ${HTMLFILES}

verify:
	./verify.sh

global/navbar.html: navbar.md
	pandoc --lua-filter navbar.lua $< -o $@

# title="$$(grep -F $(notdir $<) navbar.md | grep -oP '(?<=\[\s*).*(?=\s*\])')"

html/%.html: ${MRKDWNDIR}/%.md | bar
	title="$$(grep -F $(notdir $<) pagetitles | \
		awk '{$$1=""; print substr($$0,2) }' )"; \
	pandoc -f markdown-blank_before_blockquote-yaml_metadata_block -t html \
		--lua-filter pages.lua --template template.html  \
		--metadata title="$$title" \
		$< -o $@ 

# fullbook dont work correctly:
# sed line make all sidebar links point to anchors inside the fullbook.
# but this still need to be done for links inside the book itself,
# but somehow not for links that point outside the handbook.

content/fullbook.md:
	./fullbook.sh > $@

global/fullbookbar.html: global/navbar.html
	sed "s/href='.*#/href='#/g" $< > $@

html/fullbook.html: global/fullbookbar.html

