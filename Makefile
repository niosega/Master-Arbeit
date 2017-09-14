all:
	pdflatex -synctex=1 -interaction=nonstopmode ClassicThesis.tex

show:
	thunar ClassicThesis.pdf

clean:
	rm *aux *lo* *aux *toc *out *gz *~ *tps *xml FrontBackmatter/*aux Chapters/*aux ClassicThesis.pdf
