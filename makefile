
MRKDWNDIR := content
TEXTFILES := $(wildcard ${MRKDWNDIR}/*.md)
HTMLFILES := $(TEXTFILES:${MRKDWNDIR}/%.md=html/%.html)

all: clean bar html fullbook verify


clean:
	rm -f ${HTMLFILES}

html: ${HTMLFILES}

verify: ;@echo;echo
	./verify.sh


bar: ;@echo;echo
	pandoc --lua-filter navbar.lua navbar.md -o global/navbar.html

html/%.html: ${MRKDWNDIR}/%.md ;@echo
	# $<
	pandoc -f markdown-blank_before_blockquote -t html \
		--lua-filter pages.lua --template template.html  \
		$< -o $@ 

fullbook: ;@echo;echo
	# everything as a single page
	sed "s/href='.*#/href='#/g" global/navbar.html > global/fullbookbar.html
	./fullbook.sh
	pandoc -f markdown-blank_before_blockquote-yaml_metadata_block -t html \
		--lua-filter pages.lua --template fullbooktemplate.html  \
		fullbook.md -o html/fullbook.html
