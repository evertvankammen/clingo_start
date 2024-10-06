
#const n=4.

{filled(R,C,1..n*n)} = 1 :- R=1..n, C=1..n. % totaal 25^25 sets.


:- not filled(_,_,X), X = 1.. n*n. % 25! sets

#const magic=(n**3+n)/2.

:- #sum{Z,X,Y:  filled(X,Y,Z), Y = 1..n} != magic, X=1..n.
:- #sum{Z,X,Y:  filled(X,Y,Z), X = 1..n} != magic, Y=1..n.


:- #sum{Z,X,X:  filled(X,X,Z), X = 1..n} != magic.
:- #sum{Z,X,X:  filled(X,n - X + 1 ,Z), X = 1..n} != magic.


