RM=rm -f
LATEXMK=latexmk -f -interaction=nonstopmode --shell-escape -pdf

all: sope-consulta-t.pdf sope-consulta-tp.pdf sope-consulta-proj1.pdf sope-consulta-proj2.pdf sope-consulta-man.pdf

%.pdf: %.md codeconsulting.cls manconsulting.cls
	python3 compose.py $< | pandoc --top-level-division=chapter --highlight-style=pygments-grey.theme -s -o $(patsubst %.pdf,%.tex,$@)
	sed -i 's/\\section{\(.*\)}\\label{\(.*\)}}/\\section{\1}}\\label{\2}/g' $(patsubst %.pdf,%.tex,$@)
ifneq ($(VERSION),)
	echo "$(VERSION)" > VERSION
endif
	$(LATEXMK) $(patsubst %.pdf,%.tex,$@)
ifneq ($(VERSION),)
	$(RM) VERSION
endif

sope-consulta-man.md: parse-commands.py commands.txt
	python3 parse-commands.py commands.txt > sope-consulta-man.md
	sed -i 's/\xe2\x80\x86/ /g' sope-consulta-man.md
	sed -i 's/\xe2\x80\x8a/ /g' sope-consulta-man.md

clean:
	git clean -dfX
