\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{manconsulting}[2020/06/08 man pages documents class for consulting]
\LoadClass[a4paper]{book}
% Margins
\RequirePackage[top=15mm,bottom=20mm,left=10mm,right=10mm]{geometry}
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
%
\AtBeginDocument{\raggedright}
