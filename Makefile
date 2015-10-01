SVG = $(wildcard *.svg)
PNG = $(SVG:.svg=.png)
all: $(PNG)
%.png: %.svg
	inkscape --export-png="$@" "$<"
clean:
	rm *.png

