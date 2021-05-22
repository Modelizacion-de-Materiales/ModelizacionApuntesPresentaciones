all: Figure-MSHBlocks.pdf Figure-HeadNodes.pdf Figure-HeadElements.pdf

Figure-MSHBlocks.pdf: Figure-MSHBlocks.tikz tikzsets.tikz
	pdflatex Figure-MSHBlocks.tikz

Figure-HeadNodes.pdf: Figure-HeadNodes.tikz tikzsets.tikz
	pdflatex Figure-HeadNodes.tikz

Figure-HeadElements.pdf: Figure-HeadElements.aux
	pdflatex Figure-HeadElements.tikz 

Figure-HeadElements.aux: Figure-HeadElements.tikz tikzsets.tikz
	pdflatex Figure-HeadElements.tikz 
