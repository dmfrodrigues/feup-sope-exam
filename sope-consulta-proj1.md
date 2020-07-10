---
title:
- SOPE -- Documentos para consulta em exame

subtitle:
- Projeto 1

author:
- Diogo Miguel Ferreira Rodrigues (<dmfrodrigues2000@gmail.com>)

date:
- 19th of June, 2020

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
