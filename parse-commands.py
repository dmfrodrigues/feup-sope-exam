import sys
import subprocess

print("---\n"+
      "title:\n- SOPE - Documentos para consulta em exame\n\n"+
      "subtitle:\n- man pages\n\n"+
      "author:\n- Diogo Miguel Ferreira Rodrigues (<dmfrodrigues2000@gmail.com>)\n\n"+
      "date:\n- 19th of June, 2020\n\n"+
      "documentclass: manconsulting\n\n"+
      "urlcolor: #0645AD\n\n"+
      "toc: 1\n\n"+
      "toc-depth: 1\n\n"
      "...\n\n")

filepath = sys.argv[1]
lst = []

with open(filepath) as f:
    for line in f.readlines():
        line = line.strip()
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
                print(result, file=sys.stderr)
                break
        
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
