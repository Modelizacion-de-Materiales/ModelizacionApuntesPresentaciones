# INCLUDES=./FRAMES/title.tex ./FRAMES/01-WHOIAM.tex 
INCLUDES=./*-SECCION/*.tex  ./PREAMBLE/*.tex

LATEX=pdflatex -interaction batchmode

notes: handout ${INCLUDES} main.tex notes.tex figures
	${LATEX} notes.tex
	${LATEX} notes.tex


beamer: ${INCLUDES} main.tex beam.tex figures
	${LATEX} beam.tex
	${LATEX} beam.tex

handout:  handout.tex ${INCLUDES} main.tex figures
	${LATEX} handout.tex
	${LATEX} handout.tex
	

figures: fig_funciones


fig_funciones: ./TIKZPICTURES/Fig-01-06-Funcion.tex
	cd ./TIKZPICTURES/ ; ${LATEX} Fig-01-06-Funcion.tex

clean: 
	rm *.log *.out *.aux *.toc *.vrb *.snm
