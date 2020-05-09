# INCLUDES=./FRAMES/title.tex ./FRAMES/01-WHOIAM.tex 
INCLUDES=*/*.tex 

all: beamer.pdf handout.pdf notes.pdf

beamer.pdf: beamer.aux
	pdflatex beamer.tex

beamer.aux: beamer.tex main.tex ${INCLUDES}  libreoffice
	pdflatex beamer.tex

handout.pdf: handout.aux
	pdflatex handout.tex

handout.aux:  handout.tex ${INCLUDES} main.tex  libreoffice
	pdflatex handout.tex
	
notes.pdf: handout.aux notes.aux
	pdflatex notes.tex 

notes.aux: handout.aux ${INCLUDES} main.tex notes.tex  libreoffice
	pdflatex notes.tex

libreoffice: ./Libreoffice 
	make -C ./Libreoffice

clean: 
	find -iname \*.log \
	-o -iname \*.out \
	  -o -iname \*.aux \
	  -o -iname \*.toc \
	  -o -iname \*.vrb \
	  -o -iname \*.snm \
	  -o -iname \*.nav \
	  | xargs rm

.PHONY: libreoffice
