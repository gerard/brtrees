    warningcheck:=0;

input rboxes;
input sarith;
input graph;

%%
%% ATTENTION : ces lignes ne doivent pas se trouver ici mais dans le fichier principal...
%%
verbatimtex
\documentclass[a4paper,12pt]{article}
\usepackage[T1]{fontenc}
\usepackage[latin1]{inputenc}
\begin{document}
etex

vardef TEX primary s =
  write "verbatimtex"                    to "mptextmp.mp";
  write "\documentclass[12pt]{article}"  to "mptextmp.mp";
  write "\usepackage[T1]{fontenc}"       to "mptextmp.mp";
  write "\usepackage{amsmath,amssymb}"   to "mptextmp.mp";
  write "\begin{document}"               to "mptextmp.mp";
  write "etex"                           to "mptextmp.mp";
  write "btex "&s&" etex"                to "mptextmp.mp";
  write EOF                              to "mptextmp.mp";
  scantokens "input mptextmp"
enddef;

vardef longueur(expr p) =
  save l,i;
  numeric l;
  l:=0;
  for i=0 step .01 until length(p):
    l:=l+abs( (point i of p) - (point(i+.01) of p) );
  endfor;
  l % Pas de point-virgule
enddef;

vardef milieu(expr p) =
  save l,i,tot,A,B;
  numeric l,tot,i;
  pair A,B;
  tot := longueur(p);
  l:=0;
  B := point 0 of p;
  for i:=0 step .01 until length(p):
    A := B;
    B := point i of p;
    l := l+abs(B-A);
    exitif l > 1/2 tot;
  endfor;
  show l; show tot;
  1/2[A,B]
enddef;

vardef milieu_time(expr p) =
  save l,i,tot,A,B,t;
  numeric l,tot,i,t;
  pair A,B;
  tot := longueur(p);
  l:=0;
  B := point 0 of p;
  for i:=0 step .01 until length(p):
    t:=i;
    A := B;
    B := point i of p;
    l := l+abs(B-A);
    exitif l > 1/2 tot;
  endfor;
  t
enddef;
