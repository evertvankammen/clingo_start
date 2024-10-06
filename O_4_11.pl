% Graph coloring

% set vertex/1 of G, set edge/2 of G, set color/1 of colors, G undirected

vertex(a;b;c;d;e;f). % in all sets.
edge(a,b; b,c; c,a; d,f; f,e;e,d;a,d;f,c;b,e). % in all sets
color(red;blue;green;black;white).

{color(X,C) : color(C)} = 1 :- vertex(X). % 5^6 answer sets.


% 1 {color(a,red), color(a,blue),  ..., color(b,red),..}

:- edge(A,B), color(A,D), color(B,E), D=E.


#show color/2.
