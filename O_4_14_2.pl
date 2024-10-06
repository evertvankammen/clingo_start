


{htile(1..8,1..6);vtile(1..6,1..8)} = 21.

:- htile(X,Y), htile(X,Y + 1).
:- htile(X,Y), htile(X,Y + 2).

:- vtile(Y,X), vtile(Y + 1,X).
:- vtile(Y,X), vtile(Y + 2,X).

:- htile(X,Y), vtile(V,W),  V<=X, V+2 >=X,  W<=Y, W+2>=Y.

