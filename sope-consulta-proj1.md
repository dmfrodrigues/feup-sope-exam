---
title:
- SOPE -- DOcuments for consulting during exam

subtitle:
- Project 1

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
            Permission is granted to copy and distribute this document under the terms of the
            \href{https://creativecommons.org/licenses/by-nc-nd/4.0/}{Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International}
            public license.\par
            \immediate\write18{./get-submodule-commit-info.sh feup-sope-proj1 > sope-consulta-proj1-tmp.tex}
            Source code was fetched from \href{https://github.com/dmfrodrigues/feup-sope-proj1}{dmfrodrigues/feup-sope-proj1}, commit \input{sope-consulta-proj1-tmp.tex}\unskip, where it is published under the \href{https://www.gnu.org/licenses/gpl-3.0}{GNU General Public License v3}.
        \end{secondpage}
    }
    \makeatother
...
# simpledu

!code:feup-sope-proj1/include/arg.h

!code:feup-sope-proj1/include/simpledu_args.h

!code:feup-sope-proj1/src/simpledu_args.c

!code:feup-sope-proj1/include/simpledu_envp.h

!code:feup-sope-proj1/src/simpledu_envp.c

!code:feup-sope-proj1/include/simpledu_iterate.h

!code:feup-sope-proj1/src/simpledu_iterate.c

!code:feup-sope-proj1/include/simpledu_log.h

!code:feup-sope-proj1/src/simpledu_log.c

!code:feup-sope-proj1/include/simpledu_signals.h

!code:feup-sope-proj1/src/simpledu_signals.c

!code:feup-sope-proj1/include/simpledu_stat.h

!code:feup-sope-proj1/src/simpledu_stat.c

!code:feup-sope-proj1/include/simpledu_time.h

!code:feup-sope-proj1/src/simpledu_time.c

!code:feup-sope-proj1/src/simpledu.c
