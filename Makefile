all:
	pdflatex -synctex=1 -interaction=nonstopmode ClassicThesis.tex

show:
	thunar ClassicThesis.pdf

edit:
	texmaker ClassicThesis.tex &

clean:
	rm *aux *lo* *aux *toc *out *gz *~ *tps *xml FrontBackmatter/*aux Chapters/*aux ClassicThesis.pdf
