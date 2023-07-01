
MRKDWNDIR := content
TEXTFILES := $(wildcard ${MRKDWNDIR}/*.md)
HTMLFILES := $(TEXTFILES:${MRKDWNDIR}/%.md=html/%.html)

all: clean bar html fullbook verify

bar:
	pandoc --lua-filter navbar.lua navbar.md -o global/navbar.html

html: ${HTMLFILES}

html/%.html: ${MRKDWNDIR}/%.md
	pandoc -f markdown-blank_before_blockquote -t html \
		--lua-filter pages.lua --template template.html  \
		$< -o $@ 

clean:
	rm -f ${HTMLFILES}

verify:
	./verify.sh

fullbook:
	sed "s/href='.*#/href='#/g" global/navbar.html > global/fullbookbar.html
	./fullbook.sh
	pandoc -f markdown-blank_before_blockquote-yaml_metadata_block -t html \
		--lua-filter pages.lua --template fullbooktemplate.html  \
		fullbook.md -o html/fullbook.html
