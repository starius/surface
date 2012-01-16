
.SECONDEXPANSION:

pml = $(wildcard *.pml)
png = $(pml:.pml=.png)

build: surface.pdf cheet.pdf

%.png: %.pml
	pymol $<

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

surface.pdf: $$(png)

