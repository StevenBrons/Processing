\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{qh_global}[q\-highschool global style]
\usepackage[dutch]{babel}

\RequirePackage{float}
\RequirePackage[utf8]{inputenc}
\RequirePackage{tcolorbox}
\RequirePackage{hyperref}
\RequirePackage{url}
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{amsmath}
\RequirePackage{wrapfig}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage[useregional]{datetime2}
\RequirePackage{geometry}
\geometry{
    a4paper,
    margin=4cm,
    headsep=2cm,
    footskip=2cm
}

\setlength\parindent{0pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[width=4cm]{../logo_qhighschool.png}}
\fancyfoot[R]{\thepage}
\fancyfoot[C]{versie 1.0}
\fancyfoot[L]{\today}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}



\titleformat{\section}
  {\normalfont\Large\bfseries}{\thesection}{1em}{}[{\titlerule[0.8pt]}]

  
  
% allow line breaks in hrefs
\renewcommand{\UrlBreaks}{\do\-\do\.\do\_\do\/\do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z\do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z}

%define colors
\definecolor{primary}{rgb}{0.941, 0.514, 0.098}
\definecolor{primary_accent}{rgb}{0.514, 0.161, 0.239}

\definecolor{seconary}{rgb}{0, 0.420, 0.373}
\definecolor{seconary_accent}{rgb}{0.388, 0.792, 0.671}

\newcommand{\myhref}[2]{\href{#1}{#2}\\\path{#1}}
\newcommand{\remark}[1]{
    \begin{tcolorbox}[title=Opmerking,colframe=primary,arc=0pt,outer arc=0pt]#1\end{tcolorbox}
}

\newcommand{\tip}[1]{
    \begin{tcolorbox}[title=Tip,colframe=seconary,arc=0pt,outer arc=0pt]#1\end{tcolorbox}
}

\lstset{ %
  backgroundcolor=\color{white},   % choose the background color
  basicstyle=\footnotesize,        % size of fonts used for the code
  breaklines=true,                 % automatic line breaking only at whitespace
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{seconary_accent},    % comment style
  escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
  keywordstyle=\color{primary},       % keyword style
  stringstyle=\color{seconary},     % string literal style
  numbers=none,               % Ort der Zeilennummern
  frame=single,
  tabsize=2,
  language=java,
}

\endinput