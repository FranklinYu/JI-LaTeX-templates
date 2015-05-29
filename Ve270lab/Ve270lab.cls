%% Ve270lab.cls
%% Copyright (C) 2004 Franklin P. Yu.
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Franklin P. Yu. ( mailto:franklinyu@hotmail.com )
%
% This work consists of the files Ve270lab.cls and example.tex

\ProvidesClass{Ve270lab}[2013/06/16 v1.2 Franklin Yu, Copyright (C) 2013]
\NeedsTeXFormat{LaTeX2e}[1999/09/01]
\typeout{}
\typeout{ ======>  Lab Report Class of Joint Institude (Ve270lab.cls) 2002 <====== }
\typeout{ Based on `article.cls' }
\typeout{ Specialized for lab report in course Ve270 }
\typeout{ Franklin Yu (C) 2004 }
\typeout{ In case of questions, etc. use comp.text.tex }
\typeout{}

\DeclareOption{twoside}{\PassOptionsToPackage{twoside}{article}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}\typeout{Delegating option ``\CurrentOption'' to the standard LaTeX2e article class, I hope you know what you are doing.}}

\ProcessOptions

\LoadClass[12pt,a4paper]{article}

\RequirePackage{graphicx}
\RequirePackage[top=0.5in, bottom=1in, left=0.5in, right=0.5in]{geometry}
\RequirePackage{calc}
\newcommand{\@coursetitle}{Ve270 Introduction to Logic Design}
\newcommand{\@labnumber}{X}
\newcommand{\@student}{{\em Student unknown}}
\newcommand{\@university}{UM-SJTU Joint Institute}
\newcommand{\@experiment}{{\em No experiment title specified}}
\newcommand{\coursetitle}[1]{\renewcommand{\@coursetitle}{#1}}
\newcommand{\labnumber}[1]{\renewcommand{\@labnumber}{#1}}
\newcommand{\student}[1]{\renewcommand{\@student}{{#1}}}
\newcommand{\university}[1]{\renewcommand{\@university}{#1}}
\newcommand{\experiment}[1]{\renewcommand{\@experiment}{#1}}

\RequirePackage{lmodern}
\RequirePackage{fancyhdr}
	\renewcommand{\headrulewidth}{0pt}
\RequirePackage{xcolor}
	\definecolor{mygray}{rgb}{.8,.8,.8}

\AtBeginDocument{%
\begin{titlepage}
\begin{flushright}
\colorbox{mygray}{
	\begin{minipage}{1.5 in}
	\centering\sffamily\bfseries
	\Large Lab Report\\[1 em]
	{\color{white}\fontsize{2 in}{1 em}\selectfont \bfseries \@labnumber}
	\end{minipage}
	}
\end{flushright}
{\LARGE\bfseries
{\@university}\vspace{.1 in}
\hrule\vspace{.1 in}\noindent
{\@coursetitle}}\\[.8 in]\phantom{a}
\begin{center}
\Large by\\\emph{\@student}\vfill\@date\\[1 ex]
\colorbox{mygray}{
	\begin{minipage}{0.9\textwidth}
	\vspace{1 cm}
	\centering\sffamily\bfseries\Huge
	\@experiment\vspace{1 cm}
	\end{minipage}
	}
\\[1 in]
\end{center}
\end{titlepage}

\newgeometry{left = 1 in, right = 1 in, top = 1.5 in, bottom = 1 in}
	\newgeometry{left = 1 in, right = 1 in, top = .5 in, bottom = 1 in}
	\setlength{\headheight}{98 pt}
	\setlength{\textheight}{\paperheight - 206 pt}
	\pagestyle{fancy}
	\fancyhead[C]{\includegraphics[width=\linewidth]{D:/Learning/jilogo}}
	\rhead{} \lhead{}
	\cfoot{\thepage}
}%

\endinput
%%
%% End of file `Ve270lab.cls'.
