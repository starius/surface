
.SECONDEXPANSION:

pml = *.pml
png = $(pml:.pml=.png)

build: surface.pdf

surface.pdf: *.tex $$(png)
	pdflatex surface.tex
	pdflatex surface.tex

