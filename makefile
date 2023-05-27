
MRKDWNDIR := content
TEXTFILES := $(wildcard ${MRKDWNDIR}/*.md)
HTMLFILES := $(TEXTFILES:${MRKDWNDIR}/%.md=html/%.html)

all: clean bar html verify

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

static:
	cp html/* images global static
