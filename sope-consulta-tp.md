---
title:
- SOPE -- Documents for consulting during exam

subtitle:
- Theoretical-practical classes

author:
- Diogo Miguel Ferreira Rodrigues (<dmfrodrigues2000@gmail.com>)

date:
- 2019/20, 2nd semester

documentclass: codeconsulting

urlcolor: #0645AD

toc: 1

header-includes: |
    \makeatletter
    \g@addto@macro{\maketitle}{
        \begin{secondpage}
            Copyright \copyright 2020--\the\year\ Diogo Rodrigues\par
            \IfFileExists{VERSION}{Version \input{VERSION}}{Draft version}\par
            \immediate\write18{./get-commit-info.sh > COMMIT.tex}
            Built on \today~\currenttime~from \href{https://github.com/dmfrodrigues/feup-sope-exam}{dmfrodrigues/feup-sope-exam}, commit \input{COMMIT}\unskip.\par
            Permission is granted to copy and distribute this document under the terms of the
            \href{https://creativecommons.org/licenses/by-nc-nd/4.0/}{Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International}
            public license.\par
            \immediate\write18{./get-submodule-commit-info.sh feup-sope-ex > sope-consulta-tp-tmp.tex}
            Source code was fetched from \href{https://github.com/dmfrodrigues/feup-sope-ex}{dmfrodrigues/feup-sope-ex}, commit \input{sope-consulta-tp-tmp.tex}\unskip, where it is published under the \href{https://www.gnu.org/licenses/gpl-3.0}{GNU General Public License v3} by Diogo Rodrigues.
        \end{secondpage}
    }
    \makeatother
...

# TP01

!code:feup-sope-ex/tp01/p02_a.c

!code:feup-sope-ex/tp01/p02_a.sh

!code:feup-sope-ex/tp01/p02_b.c

!code:feup-sope-ex/tp01/p02_b.sh

!code:feup-sope-ex/tp01/p03_a.sh

!code:feup-sope-ex/tp01/p03_b.c

!code:feup-sope-ex/tp01/p03_b.sh

!code:feup-sope-ex/tp01/p03_c.sh

!code:feup-sope-ex/tp01/p04_a.c

!code:feup-sope-ex/tp01/p04_a.sh

!code:feup-sope-ex/tp01/p04_b.c

!code:feup-sope-ex/tp01/p04_b.sh

!code:feup-sope-ex/tp01/p05_a.c

!code:feup-sope-ex/tp01/p05_a.sh

!code:feup-sope-ex/tp01/p05_b.c

!code:feup-sope-ex/tp01/p05_b.sh

!code:feup-sope-ex/tp01/p05_c.c

!code:feup-sope-ex/tp01/p05_c.sh

!code:feup-sope-ex/tp01/p05_d.c

!code:feup-sope-ex/tp01/p05_d.sh

!code:feup-sope-ex/tp01/p06_a.c

!code:feup-sope-ex/tp01/p06_a.sh

!code:feup-sope-ex/tp01/p06_b.md

!code:feup-sope-ex/tp01/p06_c.sh

!code:feup-sope-ex/tp01/p06_d.c

!code:feup-sope-ex/tp01/p06_d.sh

!code:feup-sope-ex/tp01/p06_e.c

!code:feup-sope-ex/tp01/p06_e.sh

!code:feup-sope-ex/tp01/p06_f.sh

!code:feup-sope-ex/tp01/p06_g.c

!code:feup-sope-ex/tp01/p06_g.sh

!code:feup-sope-ex/tp01/p06_h.c

!code:feup-sope-ex/tp01/p06_h.sh

!code:feup-sope-ex/tp01/p07_a.c

!code:feup-sope-ex/tp01/p07_a.sh

!code:feup-sope-ex/tp01/p07_b.c

!code:feup-sope-ex/tp01/p07_b.sh

!code:feup-sope-ex/tp01/p08_a.c

!code:feup-sope-ex/tp01/p08_a.sh

!code:feup-sope-ex/tp01/p08_b.c

!code:feup-sope-ex/tp01/p08_b.sh

!code:feup-sope-ex/tp01/p09_a.sh

!code:feup-sope-ex/tp01/p09_b.sh

# TP02
!code:feup-sope-ex/tp02/f1.txt

!code:feup-sope-ex/tp02/infile.txt

!code:feup-sope-ex/tp02/p01.c
!code:feup-sope-ex/tp02/p01.sh
!code:feup-sope-ex/tp02/p02_a.c
!code:feup-sope-ex/tp02/p02_a.sh

!code:feup-sope-ex/tp02/p02_b.c
!code:feup-sope-ex/tp02/p02_b.sh

!code:feup-sope-ex/tp02/p03_a.c
!code:feup-sope-ex/tp02/p03_a.sh

!code:feup-sope-ex/tp02/p03_b.c
!code:feup-sope-ex/tp02/p03_b.sh

!code:feup-sope-ex/tp02/p04_a.c
!code:feup-sope-ex/tp02/p04_a.sh

!code:feup-sope-ex/tp02/p04_b.c
!code:feup-sope-ex/tp02/p04_b.sh

!code:feup-sope-ex/tp02/p5a.c
!code:feup-sope-ex/tp02/p5a.sh
!code:feup-sope-ex/tp02/p5b.c
!code:feup-sope-ex/tp02/p5b.sh

!code:feup-sope-ex/tp02/p05_a.md
!code:feup-sope-ex/tp02/p05_a.sh

!code:feup-sope-ex/tp02/p05_b.md

!code:feup-sope-ex/tp02/p06_a.c

!code:feup-sope-ex/tp02/p06_a.sh

# TP03
!code:feup-sope-ex/tp03/create_files.sh

!code:feup-sope-ex/tp03/p01_a.sh

!code:feup-sope-ex/tp03/p01.c

!code:feup-sope-ex/tp03/p02_a.md

!code:feup-sope-ex/tp03/p02_b.sh

!code:feup-sope-ex/tp03/p02.c

!code:feup-sope-ex/tp03/p03.c

!code:feup-sope-ex/tp03/p03.sh

!code:feup-sope-ex/tp03/p04_a.c

!code:feup-sope-ex/tp03/p04_a.sh

!code:feup-sope-ex/tp03/p04_b.c

!code:feup-sope-ex/tp03/p04_b.sh

!code:feup-sope-ex/tp03/p05.c

!code:feup-sope-ex/tp03/p05.sh

!code:feup-sope-ex/tp03/p06.c

!code:feup-sope-ex/tp03/p06.sh

!code:feup-sope-ex/tp03/p07.c

!code:feup-sope-ex/tp03/p07.sh

!code:feup-sope-ex/tp03/p08_a.c

!code:feup-sope-ex/tp03/p08_a.sh

!code:feup-sope-ex/tp03/p08_b.c

!code:feup-sope-ex/tp03/p08_b.sh

!code:feup-sope-ex/tp03/p08_c.c

!code:feup-sope-ex/tp03/p08_c.sh

!code:feup-sope-ex/tp03/p08_d.c

!code:feup-sope-ex/tp03/p08_d.sh

!code:feup-sope-ex/tp03/p08_e.c

!code:feup-sope-ex/tp03/p08_e.sh

!code:feup-sope-ex/tp03/p09_a.c

!code:feup-sope-ex/tp03/p09_a.sh

!code:feup-sope-ex/tp03/p10.c

!code:feup-sope-ex/tp03/p10.sh

# TP04


!code:feup-sope-ex/tp04/kill.sh

!code:feup-sope-ex/tp04/p01_a.c

!code:feup-sope-ex/tp04/p01_a.sh

!code:feup-sope-ex/tp04/p01_b.c

!code:feup-sope-ex/tp04/p01_b.sh

!code:feup-sope-ex/tp04/p01_c.c

!code:feup-sope-ex/tp04/p01_c.sh

!code:feup-sope-ex/tp04/p02_a.c

!code:feup-sope-ex/tp04/p02_a.sh

!code:feup-sope-ex/tp04/p02_b.sh

!code:feup-sope-ex/tp04/p02_c.c

!code:feup-sope-ex/tp04/p02_c.sh

!code:feup-sope-ex/tp04/p03_a.c

!code:feup-sope-ex/tp04/p03_a.sh

!code:feup-sope-ex/tp04/p03_b.c

!code:feup-sope-ex/tp04/p03_b.sh

!code:feup-sope-ex/tp04/p04_a.c

!code:feup-sope-ex/tp04/p04_a.md

!code:feup-sope-ex/tp04/p04_a.sh

!code:feup-sope-ex/tp04/p04_c1.sh

!code:feup-sope-ex/tp04/p05_a.c

!code:feup-sope-ex/tp04/p05_a.sh

!code:feup-sope-ex/tp04/limit.c

!code:feup-sope-ex/tp04/prog.c

!code:feup-sope-ex/tp04/p06.sh

!code:feup-sope-ex/tp04/p07.c

!code:feup-sope-ex/tp04/p07.sh

# TP05
!code:feup-sope-ex/tp05/nomes.txt

!code:feup-sope-ex/tp05/p01_a.c

!code:feup-sope-ex/tp05/p01_a.sh

!code:feup-sope-ex/tp05/p01_b.c

!code:feup-sope-ex/tp05/p01_b.sh

!code:feup-sope-ex/tp05/p01_c.c

!code:feup-sope-ex/tp05/p01_c.sh

!code:feup-sope-ex/tp05/p02_a.c

!code:feup-sope-ex/tp05/p02_a.sh

!code:feup-sope-ex/tp05/p03_a.c

!code:feup-sope-ex/tp05/p03_a.sh

!code:feup-sope-ex/tp05/p03_b.c

!code:feup-sope-ex/tp05/p03_b.sh

!code:feup-sope-ex/tp05/p04.c

!code:feup-sope-ex/tp05/p04.sh

!code:feup-sope-ex/tp05/p06_a1.sh

!code:feup-sope-ex/tp05/p06_a2.sh

!code:feup-sope-ex/tp05/p06_reader.c

!code:feup-sope-ex/tp05/p06_writter.c

!code:feup-sope-ex/tp05/p07_client.c

!code:feup-sope-ex/tp05/p07_server.c

!code:feup-sope-ex/tp05/p07.sh

!code:feup-sope-ex/tp05/p08_chg.c

!code:feup-sope-ex/tp05/p08.sh

!code:feup-sope-ex/tp05/p08_trl_chg.c

!code:feup-sope-ex/tp05/p09_client.c

!code:feup-sope-ex/tp05/p09_server.c

!code:feup-sope-ex/tp05/p09.sh

# TP06
!code:feup-sope-ex/tp06/grep_mt.c

!code:feup-sope-ex/tp06/p01.c

!code:feup-sope-ex/tp06/p01.sh

!code:feup-sope-ex/tp06/p02.c

!code:feup-sope-ex/tp06/p02.sh

!code:feup-sope-ex/tp06/p03.c

!code:feup-sope-ex/tp06/p03.md

!code:feup-sope-ex/tp06/p03.sh

!code:feup-sope-ex/tp06/p04.c

!code:feup-sope-ex/tp06/p04.md

!code:feup-sope-ex/tp06/p04.sh

!code:feup-sope-ex/tp06/p05.c

!code:feup-sope-ex/tp06/p05.sh

!code:feup-sope-ex/tp06/p06_client.c

!code:feup-sope-ex/tp06/p06.h

!code:feup-sope-ex/tp06/p06_server.c

!code:feup-sope-ex/tp06/p06.sh

!code:feup-sope-ex/tp06/p07.c

!code:feup-sope-ex/tp06/p07.sh

!code:feup-sope-ex/tp06/p08.sh

!code:feup-sope-ex/tp06/p09.c

!code:feup-sope-ex/tp06/p09.in

!code:feup-sope-ex/tp06/p09.md

!code:feup-sope-ex/tp06/p09.sh

!code:feup-sope-ex/tp06/p10.c

!code:feup-sope-ex/tp06/p10.in

!code:feup-sope-ex/tp06/p10.sh

# TP07
!code:feup-sope-ex/tp07/p01.c

!code:feup-sope-ex/tp07/p01.sh

!code:feup-sope-ex/tp07/p02.c

!code:feup-sope-ex/tp07/p02.sh

!code:feup-sope-ex/tp07/p03.c

!code:feup-sope-ex/tp07/p03.sh

!code:feup-sope-ex/tp07/p04.c

!code:feup-sope-ex/tp07/p04.sh

!code:feup-sope-ex/tp07/p06_a.md

!code:feup-sope-ex/tp07/p06_b.md

!code:feup-sope-ex/tp07/p07.md

!code:feup-sope-ex/tp07/p08_chg.c

!code:feup-sope-ex/tp07/p08.sh

!code:feup-sope-ex/tp07/p08_trl_chg.c

