RM=rm -f

all: sope-consulta-t.pdf

%.pdf: %.md
	python3 compose.py $< | pandoc -s -o $@

clean:
	git clean -dfX

