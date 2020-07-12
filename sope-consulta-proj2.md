---
title:
- SOPE -- Documents for consulting during exam

subtitle:
- Project 2

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
            \immediate\write18{./get-commit-info.sh > COMMIT.tex}
            Built on \today~\currenttime~from \href{https://github.com/dmfrodrigues/feup-sope-exam}{dmfrodrigues/feup-sope-exam}, commit \input{COMMIT}\unskip.\par
            Permission is granted to copy and distribute this document under the terms of the
            \href{https://creativecommons.org/licenses/by-nc-nd/4.0/}{Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International}
            public license.\par
            \immediate\write18{./get-submodule-commit-info.sh feup-sope-proj2 > sope-consulta-proj2-tmp.tex}
            Source code was fetched from \href{https://github.com/dmfrodrigues/feup-sope-proj2}{dmfrodrigues/feup-sope-proj2}, commit \input{sope-consulta-proj2-tmp.tex}\unskip, where it is published under the \href{https://www.gnu.org/licenses/gpl-3.0}{GNU General Public License v3} by Diogo Rodrigues, João António Sousa and Rafael Ribeiro.
        \end{secondpage}
    }
    \makeatother
...

# Common

!code:feup-sope-proj2/common/include/common_atomic.h

!code:feup-sope-proj2/common/src/common_atomic.c

!code:feup-sope-proj2/common/include/common_time.h

!code:feup-sope-proj2/common/src/common_time.c

!code:feup-sope-proj2/common/include/message.h

!code:feup-sope-proj2/common/include/output.h

!code:feup-sope-proj2/common/src/output.c

!code:feup-sope-proj2/common/include/utils.h

!code:feup-sope-proj2/common/src/utils.c

# Client

!code:feup-sope-proj2/client/include/client_args.h

!code:feup-sope-proj2/client/src/client_args.c

!code:feup-sope-proj2/client/include/client_thread_args.h

!code:feup-sope-proj2/client/src/client_thread_args.c

!code:feup-sope-proj2/client/include/client_threads.h

!code:feup-sope-proj2/client/src/client_threads.c

!code:feup-sope-proj2/client/include/client_threads.h

!code:feup-sope-proj2/client/src/client_threads.c

!code:feup-sope-proj2/client/include/client_time.h

!code:feup-sope-proj2/client/src/client.c

# Server

!code:feup-sope-proj2/server/include/server_args.h

!code:feup-sope-proj2/server/src/server_args.c

!code:feup-sope-proj2/server/include/server_signal.h

!code:feup-sope-proj2/server/src/server_signal.c

!code:feup-sope-proj2/server/include/server_threads.h

!code:feup-sope-proj2/server/src/server_threads.c

!code:feup-sope-proj2/server/src/server.c
