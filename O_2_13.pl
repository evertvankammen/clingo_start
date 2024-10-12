% Cliques of size n
% largest clique

vertex(a;b;c;d;e;f).

max(M) :- M = #count{Z : vertex(Z)}.

edge(a,b; b,c; c,a; d,f; f,e;e,d;a,d;f,c;b,e).

2 {in(X) : vertex(X)} M :- max(M).

X = Y :- in(X), in(Y), not edge(X,Y), not edge(Y,X). % filter ans sets uit met een int(X) en een int(Y) en geen edge ertussen als en X != Y.

#maximize{ 1,X : in(X)}. % maximize(1,a;1,b;1,c)  maximize{1 : in(x)} => maximize {1}.



#show in/1.
