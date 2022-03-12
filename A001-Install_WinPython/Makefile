beam.pdf: beam.aux
	pdflatex beam.tex

beam.aux: beam.tex main.tex PREAMBLE/*.tex
	pdflatex beam.tex

figures: winpython_title.png winpython_launchers.png oz-no-mahotsukai-episode-17_521.png

oz-no-mahotsukai-episode-17_521.png: 
	wget https://static.tvtropes.org/pmwiki/pub/images/oz-no-mahotsukai-episode-17_521.jpg
	convert oz-no-mahotsukai-episode-17_521.jpg oz-no-mahotsukai-episode-17_521.png

winpython_title.png:
	wget https://winpython.github.io/images/winpython_title.png

winpython_launchers.png:
	wget https://winpython.github.io/images/winpython_launchers.png

clean:
	find -iname \*.aux \
	-o -iname \*.aux \
	-o -iname \*.log \
	-o -iname \*.nav \
	-o -iname \*.out \
	-o -iname \*.snm \
	-o -iname \*.toc \
	| xargs rm
