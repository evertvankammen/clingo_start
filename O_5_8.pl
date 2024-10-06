#const n=5.
{p(X)} :- X = 1..n.

%:- not p(_).  % wat niet mag voorkomen is dat p(_) niet in de as zit

:- #count{ X : p(X)} = 0.
:- #min{ X : p(X)} = #sup.
:- #max{ X : p(X)} = #inf.



%{q(X) : X = 1..n}.  %alle sets met 0 tot n elementen

#show p/1.
