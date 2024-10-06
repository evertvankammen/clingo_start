% Vertex Cover
% vertex cover: set knooppunten waarbij van iedere edge x,y
% minstens x of y in de set zit.

#const n=6.

vertex(a;b;c;d;e;f). % in all sets.
edge(a,b; b,c; c,a; d,f; f,e;e,d;a,d;f,c;b,e). % in all sets

{in(X) : vertex(X) } = n. %  n = 4, 6!/(4!*2!) = 15 sets met 4 elementen alle mogelijke deel verzamelingen van knopen van lengte n, aantal answer sets: n!/k!(n-k)!
% achieved in/1, solution candidates

covered(A,B) :- in(A), edge(A,B).
covered(A,B) :- in(B), edge(A,B).

:- edge(A,B), not covered(A,B).

#show in/1.









