SECTIONS := 01-FEM-Directo.tex 01-01-FrameElemento1.tex 01-02-FrameElemento2.tex

notes.pdf: handout.aux notes.tex
	pdflatex notes.tex

handout.aux: handout.tex beamer.aux main.tex 
	pdflatex handout.tex

beamer.pdf: beamer.aux

beamer.aux: beamer.tex  $(SECTIONS) LO-Apuntes
	echo $(SECTIONS)
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
