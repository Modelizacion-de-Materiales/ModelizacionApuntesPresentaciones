SRC=0*.tex equation*.tex CODES/*.m

notes.pdf: handout.pdf notes.aux
	pdflatex notes.tex

notes.aux: ${SRC} notes.tex
	pdflatex notes.tex

handout.pdf: handout.aux
	pdflatex handout.tex

handout.aux: ${SRC} handout.tex 
	pdflatex handout.tex

beamer.pdf: beamer.aux
	pdflatex beamer.tex

beamer.aux: ${SRC} beamer.tex
	pdflatex beamer.tex
