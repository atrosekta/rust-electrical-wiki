
TEXTFILES := $(wildcard text/*.md)
HTMLFILES := $(TEXTFILES:text/%.md=html/%.html)

all: clean bar html

bar:
	pandoc --lua-filter navbar.lua navbar.md -o global/navbar.html

html: $(HTMLFILES)

html/%.html: text/%.md
	pandoc -f markdown -t html $< -o $@ --template template.html

clean:
	rm -f $(HTMLFILES)

static:
	cp html/* images global static
