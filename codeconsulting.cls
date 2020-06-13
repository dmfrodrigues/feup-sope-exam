\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{codeconsulting}[2020/06/08 Code documents class for consulting]
\LoadClass[a4paper]{book}
% Variables
\RequirePackage{xkeyval}%
\def\docauthorname{A. U. Thor}%
\define@key{codeconsulting.cls}{author}[A. U. Thor]{%
  \def\docauthorname{#1}%
}

\ExecuteOptionsX{author}
\ProcessOptionsX%

% Some work
\def\title#1{\gdef\@title{#1}\gdef\@@title{#1}}
\def\author#1{\gdef\@author{#1}\gdef\@@author{#1}}
\let\@@title\@empty
\let\@@author\@empty

% Other options
\RequirePackage[top=15mm,bottom=20mm,left=10mm,right=10mm,headsep=4mm]{geometry}
\RequirePackage{titlesec}
\titlespacing{\subsection}{0pt}{0pt}{0pt}

% Headers and footers
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[RE, LO]{\textit{\leftmark}}
\fancyhead[LE, RO]{\thepage}
\fancyfoot[LE, RO]{\ifx\@@author\@empty\else\@@author\fi}
