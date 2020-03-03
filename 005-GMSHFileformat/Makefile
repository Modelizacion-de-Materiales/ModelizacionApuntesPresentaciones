# INCLUDES=./FRAMES/title.tex ./FRAMES/01-WHOIAM.tex 
INCLUDES=*/*.tex 

beamer.pdf: ${INCLUDES} main.tex beam.tex
	pdflatex beam.tex
	pdflatex beam.tex

handout.pdf:  handout.tex ${INCLUDES} main.tex
	pdflatex handout.tex
	pdflatex handout.tex
	
notes.pdf: handout.pdf ${INCLUDES} main.tex notes.tex
	pdflatex notes.tex
	pdflatex notes.tex

clean: 
	find -iname \*.log \
	-o -iname \*.out \
	  -o -iname \*.aux \
	  -o -iname \*.toc \
	  -o -iname \*.vrb \
	  -o -iname \*.snm \
	  -o -iname \*.nav \
	  | xargs rm
