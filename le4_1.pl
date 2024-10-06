% Edge coloring

% set vertex/1 of G, set edge/2 of G, set color/1 of colors

vertex(a;b;c;d;e;f). % in all sets.
edge(a,b; b,c; c,a; d,f; f,e;e,d;a,d;f,c;b,e). % in all sets
color(red;blue;green).


{color(A,B,C) : color(C)}=1 :- edge(A,B).

:- edge(A,B), edge(C,D), B!=D, color(A,B,C1), color(A,D,C1).
:- edge(A,B), edge(C,D), color(A,B,C1), color(C,A,C1).
:- edge(A,B), edge(C,D), color(A,B,C1), color(B,D,C1).
:- edge(A,B), edge(C,D), A!=C, color(A,B,C1), color(C,B,C1).

#show color/3.
