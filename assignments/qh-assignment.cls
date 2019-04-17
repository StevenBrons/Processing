% this is my first package
% 
% (c) Buffalo Bill
%
%% This program can be redistributed and/or modified under the terms
%% of the LaTeX Project Public License Distributed from CTAN archives
%% in directory macros/latex/base/lppl.txt.
% 
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{qh-assignment}[q\-highschool assignments style]

\def\hi{Hello, this is my own package}
\let\myDate\date
\newcommand\GoodBye[1][\bfseries]{{#1Good Bye}}

\endinput
%%
%% End of file `mypackage.sty'.