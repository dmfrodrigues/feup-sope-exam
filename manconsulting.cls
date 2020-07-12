\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{manconsulting}[2020/06/08 man pages documents class for consulting]
\LoadClass[a4paper]{book}
% Margins
\RequirePackage[top=15mm,bottom=20mm,left=10mm,right=10mm]{geometry}
% Time and date
\usepackage[yyyymmdd,hhmmss]{datetime}
\renewcommand{\dateseparator}{-}
% Sections font size
\RequirePackage{sectsty}
\chapterfont{\fontsize{30}{30}\selectfont}
\sectionfont{\fontsize{22}{22}\selectfont}
\subsectionfont{\fontsize{15}{15}\selectfont}
\subsubsectionfont{\fontsize{12}{12}\selectfont}
% Spacings
\RequirePackage{titlesec}
\titlespacing{\section}{0pt}{20pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}
% Font
\renewcommand*\familydefault{\ttdefault} %% Only if the base font of the document is to be typewriter style
% ToC
\setcounter{tocdepth}{1}
% Second page
\RequirePackage{changepage}
\newenvironment{secondpage}{
    \clearpage\null\vfill
    \thispagestyle{empty}
    \begin{adjustwidth}{15mm}{15mm}
        \begin{minipage}[b]{0.9\linewidth}
            \footnotesize\raggedright
            \setlength{\parskip}{0.5\baselineskip}
}{
        \end{minipage}
    \end{adjustwidth}
    \vspace*{2\baselineskip}
}
%
\AtBeginDocument{\raggedright}
