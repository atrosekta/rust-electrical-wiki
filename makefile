
MRKDWNDIR := content
TEXTFILES := $(wildcard ${MRKDWNDIR}/*.md)
HTMLFILES := $(TEXTFILES:${MRKDWNDIR}/%.md=html/%.html)

all: clean bar html

bar:
	pandoc --lua-filter navbar.lua navbar.md -o global/navbar.html

html: ${HTMLFILES}

html/%.html: ${MRKDWNDIR}/%.md
	pandoc -f markdown -t html $< -o $@ --template template.html

clean:
	rm -f ${HTMLFILES}

verify:
	./verify.sh

static:
	cp html/* images global static
