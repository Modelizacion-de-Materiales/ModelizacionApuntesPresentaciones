SRC=0*.tex Equation*.tex CODES/*.m CODES/*.py main.tex

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

clean:
	find -iname \*.aux \
		-o -iname \*.out\
		-o -iname \*.toc\
		-o -iname \*.snm\
		-o -iname \*.aux\
		-o -iname \*.nav\
		-o -iname \*.log\
		| xargs rm
