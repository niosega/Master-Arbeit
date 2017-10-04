# If the first argument is "run"...
ifeq (commit,$(firstword $(MAKECMDGOALS)))
  # use the rest as arguments for "run"
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(RUN_ARGS):;@:)
endif

ifeq (git,$(firstword $(MAKECMDGOALS)))
  # use the rest as arguments for "run"
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(RUN_ARGS):;@:)
endif


all:
	pdflatex -synctex=1 -interaction=nonstopmode ClassicThesis.tex

show:
	thunar ClassicThesis.pdf

edit:
	texmaker ClassicThesis.tex &

commit:
	git commit -am "$(RUN_ARGS)"

push:
	git push

git:
	git commit -am "$(RUN_ARGS)"
	git push

clean:
	rm *aux *lo* *aux *toc *out *gz *~ *tps *xml FrontBackmatter/*aux Chapters/*aux ClassicThesis.pdf
