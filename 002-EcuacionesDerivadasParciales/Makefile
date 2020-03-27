# INCLUDES=./FRAMES/title.tex ./FRAMES/01-WHOIAM.tex 
PDFLATEX=pdflatex # -interaction=batchmode 

PREAMBLE=./PREAMBLE/*.tex
INCLUDES=./01-Problema/*.tex  ./02-Matriza/*.tex ./03-CondicionContorno/*.tex

all: notes.pdf

notes.pdf: handout.pdf figures ${INCLUDES} main.tex notes.tex lists
	${PDFLATEX} notes.tex
	${PDFLATEX} notes.tex

beamer.pdf: ${INCLUDES} main.tex beamer.tex figures lists
	${PDFLATEX} beam.tex
	${PDFLATEX} beam.tex



handout.pdf:  handout.tex figures ${INCLUDES} main.tex lists
	${PDFLATEX} handout.tex
	${PDFLATEX} handout.tex

##########################################	
figures: Figura1-Chapa Figura1-Grilla Figura-Tiempos-Escaleo

Figura1-Chapa: 01-Problema/Figura01-01-Chapa.tikz
	cd 01-Problema; ${PDFLATEX} Figura01-01-Chapa.tikz ; cd ..

Figura1-Grilla: 01-Problema/01-Figura-Grilla.tikz
	cd 01-Problema; ${PDFLATEX} 01-Figura-Grilla.tikz ; cd ..

Figura-Tiempos-Escaleo: DATA/plot-tiempos.gpi
	cd DATA; gnuplot plot-tiempos.gpi ; ${PDFLATEX} tiempos.tex ; cd ..

#########################################

lists: 
	grep -e \\label{Eq.*}  */*.tex > ListOfEquations.md      	
	grep -e \\label{[fF]ig.*}  */*.tex > ListOfFigures.md
	grep -e \\[label=Frame.*\\] */*.tex > ListOfFrames.md

clean: 
	find -iname  \*.log \
	  -o -iname \*.out \
	  -o  -iname \*.aux \
	  -o  -iname \*.toc \
	  -o  -iname \*.vrb \
	  -o  -iname \*.snm \
	  -o  -iname \*.nav \
	  |xargs rm

cleanpdfs:
	find -iname \*.pdf -exec rm {} +


