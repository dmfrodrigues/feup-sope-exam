RM=rm -f

all: sope-consulta-t.pdf sope-consulta-tp.pdf sope-consulta-proj1.pdf sope-consulta-proj2.pdf

%.pdf: %.md
	python3 compose.py $< | pandoc --top-level-division=chapter --highlight-style=pygments-grey.theme -s -o $@

clean:
	git clean -dfX

