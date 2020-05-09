# INCLUDES=./FRAMES/title.tex ./FRAMES/01-WHOIAM.tex 
INCLUDES=*/*.tex 

SRCS=main.tex ${INCLUDES}  libreoffice Figures

all: beamer.pdf handout.pdf notes.pdf

beamer.pdf: beamer.aux
	pdflatex beamer.tex

beamer.aux: beamer.tex ${SRCS} 
	pdflatex beamer.tex

handout.pdf: handout.aux
	pdflatex handout.tex

handout.aux:  handout.tex ${SRCS}
	pdflatex handout.tex
	
notes.pdf: handout.aux notes.aux
	pdflatex notes.tex 

notes.aux: handout.aux ${SRCS}
	pdflatex notes.tex

libreoffice: ./Libreoffice 
	make -C ./Libreoffice

Figures: Figures/
	make -C Figures/

clean: 
	find -iname \*.log \
	-o -iname \*.out \
	  -o -iname \*.aux \
	  -o -iname \*.toc \
	  -o -iname \*.vrb \
	  -o -iname \*.snm \
	  -o -iname \*.nav \
	  | xargs rm

.PHONY: libreoffice Figures
