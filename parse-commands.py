import sys
import subprocess

print("---\n"+
      "title:\n- SOPE - Documents for consulting during exam\n\n"+
      "subtitle:\n- man pages\n\n"+
      "author:\n- Diogo Miguel Ferreira Rodrigues (<dmfrodrigues2000@gmail.com>)\n\n"+
      "date:\n- 2019/20, 2nd semester\n\n"+
      "documentclass: manconsulting\n\n"+
      "urlcolor: #0645AD\n\n"+
      "toc: 1\n\n"+
      "toc-depth: 1\n\n"+
      "header-includes: |\n"+
      "    \\makeatletter\n"+
      "    \\g@addto@macro{\\maketitle}{\n"+
      "        \\begin{secondpage}\n"+
      "            Copyright \\copyright 2020--\\the\\year\\ Diogo Rodrigues\\par\n"+
      "            \\immediate\\write18{./get-commit-info.sh > COMMIT.tex}\n"+
      "            Built on \\today~\\currenttime~from \\href{https://github.com/dmfrodrigues/feup-sope-exam}{dmfrodrigues/feup-sope-exam}, commit \\input{COMMIT}\\unskip.\\par\n"+
      "            Permission is granted to redistribute and/or modify this document under the terms of the\n"+
      "            \\href{https://www.gnu.org/licenses/gpl-3.0}{GNU General Public License v3}.\\par\n"+
      "            This document was compiled with the objective of being made publicly available for free at Github repository \\href{https://github.com/dmfrodrigues/feup-sope-exam}{dmfrodrigues/feup-sope-exam} for whoever might find it useful as a resource for consulting during exams of SOPE @FEUP.\\par\n"+
      "            This is a compilation of manual pages commonly found under a Ubuntu distribution (or installed via \\texttt{apt}), all of which released under \\href{https://www.kernel.org/doc/man-pages/licenses.html}{free licenses}. Unfortunately I can not acknowledge all authors individually as this document is automatically generated; the corresponding authors are mentioned in the \\emph{Copyright} sections, or are otherwise trackable via links in colophones and similar sections. The original documents can otherwise be found by consulting the \\href{https://github.com/dmfrodrigues/feup-sope-exam/blob/master/.github/workflows/main.yml}{Github Actions file} that generated it.\n"+
      "        \\end{secondpage}\n"+
      "    }\n"+
      "    \\makeatother\n\n"+
      "...\n\n")

filepath = sys.argv[1]
lst = []

with open(filepath) as f:
    for line in f.readlines():
        line = line.strip()
        print("Reading %s"%line, file=sys.stderr)
        section = line.split(' ')[0]
        result = subprocess.getoutput("zcat $(man -w %s) | pandoc -f man -t commonmark"%line).split("\n")
        for i in range(len(result)):
            if "# NAME" in result[i]:
                i += 1
                while result[i] == '':
                    i += 1
                s = ""
                while not result[i].startswith('#'):
                    s += result[i]
                    i += 1
                s = s.split("-")[0].split("—")[0]
                result = [x.strip() for x in s.replace("\\_", "_").split(",")]
                break
        
        print(result, file=sys.stderr)
        
        s1 = "%s %s"%(section, result[0])
        for l in result:
            s2 = "%s %s"%(section, l)
            lst.append((s2, s1))

lst = list(dict.fromkeys(lst))
lst.sort()

current_section = ""

for i in lst:
    print("Processing %s"%i[0], file=sys.stderr)
    s2 = i[0].split(" ")
    s1 = i[1].split(" ")
    section = s1[0]
    if(current_section != section):
        print("# Section %s"%section)
        current_section = section
    print("## %s(%s)"%(s2[1], s2[0]))
    if i[0] == i[1]:
        print(subprocess.getoutput("zcat $(man -w %s) | pandoc -f man -t gfm | sed 's/# /### /g'"%i[0]))
    else:
        print("See %s(%s)"%(s1[1], s1[0]))
    print("\n\n")
