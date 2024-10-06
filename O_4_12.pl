% strongly connected

% strongly connected component: verzameling punten W van G
% waarbij tussen alle punten van W een pad bestaat.


vertex(a;b;c;d;e;f). % in all sets.
edge(a,b; b,c; c,a; d,f; f,e;e,d;a,d;f,c;b,e). % in all sets

% in(X,Y) : edge(X,Y)} = 1 :-vertex(X).
% in(a,Y) : edge(a,Y)} = 1.
% in(a,b)}               1 set
% in(b,Y) : edge(b,Y)} = 1.
% in(b,c);in(b,e)}       2 sets
% in(c,Y) : edge(c,Y)} = 1.
% in(c,a);}                    1 set
% in(d,Y) : edge(d,Y)} = 1.
% in(d,f)} 1 set
% n(e,Y) : edge(e,Y)} = 1.
% in(e,d)} 1 set
% in(f,Y) : edge(f,Y)} = 1.
% in(f,e);in(f,c)} 2 sets
% *2*2 4 sets  in iedere set wordt altijd 1, dus als er een edge(a,b) en een edge(a,c) bestaat dan zit in de set een van deze
% in(X,Y) : edge(X,Y)} = 1 :-vertex(Y).
% in(X,Y) bevat alle Gs waarbij alle dubbele paden verwijderd zijn, dus in ieder G wordt een keuze gemaakt bij meerdere uitgaande paden.

2 {in(X) : vertex(X)} n. % nu worden de deelverzamelingen van de knopen van G gemaakt.

% path van X naar Y (naast elkaar)
path(X,Y) :- vertex(X), vertex(Y), edge(X,Y).
path(X,Z) :- path(X,Y), edge(Y,Z), vertex(Z),vertex(X),vertex(Y).  % path bevat alle mogelijke paden in G.

is_cycle(X,X) :- path(X,Y), path(Y,X), Y != X.

connected(X,Y) :- path(X,Y), in(X), in(Y), not is_cycle(X,Y), X!=Y.

:-in(X), in(Y), not connected(X,Y), X != Y.  % X != Y  is nodig anders wordt ook not connected(X,X) uitgevoerd, die is altijd false


#show in/1.
