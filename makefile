RM=rm -f

all: sope-consulta-t.pdf sope-consulta-tp.pdf sope-consulta-proj1.pdf sope-consulta-proj2.pdf sope-consulta-man.pdf

%.pdf: %.md codeconsulting.cls
	python3 compose.py $< | pandoc --top-level-division=chapter --highlight-style=pygments-grey.theme -s -o $@

sope-consulta-man.pdf: sope-consulta-man.tex manconsulting.cls
	latexmk -interaction=nonstopmode $< -pdf

sope-consulta-man.tex: sope-consulta-man.md 
	python3 compose.py $< | pandoc --top-level-division=chapter --highlight-style=pygments-grey.theme -s -o $@
	sed -i 's/\\begin{document}/\\begin{document}\\raggedright/g' sope-consulta-man.tex

sope-consulta-man.md: parse-commands.py commands.txt
	python3 parse-commands.py commands.txt > sope-consulta-man.md
	sed -i 's/\xe2\x80\x86/ /g' sope-consulta-man.md
	sed -i 's/\xe2\x80\x8a/ /g' sope-consulta-man.md

clean:
	git clean -dfX

