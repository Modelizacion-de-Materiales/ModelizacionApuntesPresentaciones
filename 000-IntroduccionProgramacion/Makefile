# INCLUDES=./FRAMES/title.tex ./FRAMES/01-WHOIAM.tex 
INCLUDES=./*-SECCION/*.tex  ./PREAMBLE/*.tex

LATEX=pdflatex #-interaction batchmode

notes.pdf: handout.pdf ${INCLUDES} main.tex notes.tex figures
	${LATEX} notes.tex
	${LATEX} notes.tex


beamer.pdf: ${INCLUDES} main.tex beam.tex figures
	${LATEX} beam.tex
	${LATEX} beam.tex

handout.pdf:  handout.tex ${INCLUDES} main.tex figures
	${LATEX} handout.tex
	${LATEX} handout.tex
	

figures: fig_funciones


fig_funciones: ./TIKZPICTURES/Fig-01-06-Funcion.tex
	cd ./TIKZPICTURES/ ; ${LATEX} Fig-01-06-Funcion.tex

clean: 
	find -iname \*.log \
	-o -iname \*.out \
	-o -iname \*.aux \
	-o -iname \*.toc \
	-o -iname \*.vrb \
	-o -iname \*.snm \
	-o -iname \*.nav \
	-o -iname \*.vrb \
	-o -iname \*.toc | xargs rm
