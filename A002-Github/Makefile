beam.pdf: beam.aux
	pdflatex beam.tex

beam.aux: beam.tex main.tex PREAMBLE/*.tex figures
	pdflatex beam.tex

figures: Screenshots/*.png


clean:
	find -iname \*.aux \
	-o -iname \*.aux \
	-o -iname \*.log \
	-o -iname \*.nav \
	-o -iname \*.out \
	-o -iname \*.snm \
	-o -iname \*.toc \
	| xargs rm
