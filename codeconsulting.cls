\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{codeconsulting}
\LoadClass[a4paper]{book}
% Margins
\RequirePackage[top=15mm,bottom=20mm,left=10mm,right=10mm,headsep=4mm]{geometry}
% Copyright page
\newenvironment{secondpage}{
    \clearpage\null\vfill
    \thispagestyle{empty}
    \begin{minipage}[b]{0.9\textwidth}
        \footnotesize\raggedright
        \setlength{\parskip}{0.5\baselineskip}
}{
    \end{minipage}
    \vspace*{2\baselineskip}
}
% Sections
\RequirePackage{titlesec}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
% Some work
\def\title#1{\gdef\@title{#1}\gdef\@@title{#1}}
\def\author#1{\gdef\@author{#1}\gdef\@@author{#1}}
\let\@@title\@empty
\let\@@author\@empty
% Headers and footers
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[RE, LO]{\textit{\leftmark}}
\fancyhead[LE, RO]{\thepage}
\fancyfoot[LE, RO]{\ifx\@@author\@empty\else\@@author\fi}
