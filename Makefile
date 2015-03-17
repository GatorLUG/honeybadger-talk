.PHONY: all clean

all: index.html

index.html: slides.md
	pandoc $< -o $@ -t revealjs --standalone --template=template.html

clean:
	rm -f slides.html
