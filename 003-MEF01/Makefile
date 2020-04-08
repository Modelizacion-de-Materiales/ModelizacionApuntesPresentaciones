SECTIONS := 01-FEM-Directo.tex

notes.pdf: handout.aux notes.tex
	pdflatex notes.tex

handout.aux: handout.tex beamer.aux main.tex LO-Apuntes
	pdflatex handout.tex

beamer.pdf: beamer.aux

beamer.aux: beamer.tex  $(SECTIONS) LO-Apuntes
	pdflatex beamer.tex

LO-Apuntes: Libreoffice
Libreoffice: ./Libreoffice/
	make -C Libreoffice


.PHONY: LO-Apuntes Libreoffice


clean: 
	find -iname \*.aux\
	  -o -iname \*.log\
	  -o -iname \*.nav\
	  -o -iname \*.out\
	  -o -iname \*.pdf\
	  -o -iname \*.snm\
	  -o -iname \*.toc\
	  | xargs rm
