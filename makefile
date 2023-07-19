
MRKDWNDIR := content
TEXTFILES := $(wildcard ${MRKDWNDIR}/*.md)
HTMLFILES := $(TEXTFILES:${MRKDWNDIR}/%.md=html/%.html)

all: clean bar fullbook html verify


clean:
	rm -f ${HTMLFILES}

html: ${HTMLFILES}

verify: ;@echo
	./verify.sh


fullbook: ;@echo
	# everything in a single page
	sed "s/href='.*#/href='#/g" global/navbar.html > global/fullbookbar.html
	./fullbook.sh

bar: ;@echo
	# navbar
	pandoc --lua-filter navbar.lua navbar.md -o global/navbar.html

html/%.html: ${MRKDWNDIR}/%.md ;@echo
	# $(notdir $<)
	title="$$(grep -F $(notdir $<) pagetitles | \
		awk '{$$1=""; print substr($$0,2) }' )"; \
	pandoc -f markdown-blank_before_blockquote-yaml_metadata_block -t html \
		--lua-filter pages.lua --template template.html  \
		--metadata title="$$title" \
		$< -o $@ 

