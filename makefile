RM=rm -f

all: sope-consulta-t.pdf sope-consulta-tp.pdf sope-consulta-proj1.pdf sope-consulta-proj2.pdf

%.pdf: %.md
	python3 compose.py $< | pandoc --highlight-style=pygments-grey.theme -s -o $@

sope-consulta-tp.md: ./process-feup-sope-ex.sh
	chmod u+x process-feup-sope-ex.sh
	./process-feup-sope-ex.sh > sope-consulta-tp.md

clean:
	git clean -dfX

