
.SECONDEXPANSION:

pml = $(wildcard *.pml)
png = $(pml:.pml=.png)

%.png: %.pml
	pymol $<

build: surface.pdf

surface.pdf: *.tex $$(png)
	pdflatex surface.tex
	pdflatex surface.tex

