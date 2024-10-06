% definitie atomen


% verzameling clausules vc:
% bijv:

% I = a1, a2, a3, L= a1,-a2

v(a1;a2;a3).
{true(X);false(X)} = 1 :- v(X).

cl(a1,a2,a3).
cl(-a1,a2,a3).
cl( a1,-a2,a3).
cl( -a1,-a2,-a3).


holds(a1,X,Y) :- cl(a1,X,Y),  true(a1).
holds(X,a2,Y) :- cl(X,a2,Y),  true(a2).
holds(X,Y,a3) :- cl(X,Y,a3),  true(a3).
holds(-a1,X,Y) :- cl(-a1,X,Y),  false(a1).
holds(X,-a2,Y) :- cl(X,-a2,Y),  false(a2).
holds(X,Y,-a3) :- cl(X,Y,-a3),  false(a3).

:- not holds(X,Y,Z), cl(X,Y,Z).

#show cl/3.
#show true/1.
#show false/1.
