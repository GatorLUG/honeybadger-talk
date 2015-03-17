.PHONY: all clean

all: slides.html

%.html: %.md
	pandoc $< -o $@ -t revealjs --standalone --template=template.html

clean:
	rm -f slides.html
