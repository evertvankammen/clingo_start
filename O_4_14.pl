
square(1..8,1..8).

{htile(X,Y,X + 1,Y,X + 2,Y) : square(X,Y), square(X + 1,Y), square(X + 2,Y);
vtile(X,Y,X,Y + 1,X,Y + 2) : square(X,Y), square(X,Y + 1), square(X,Y + 2)} = 21.

%overlap htile

:- htile(A,B,A+1,B,A+2,B) , htile(A2,B2,A2 + 1,B2,A2 + 2,B2), A<A2, A2 < A + 2.
:- vtile(A,B,A,B + 1,A,B +2) , vtile(A2,B2,A2,B2 + 1,A2,B2 + 2), B<B2, B2 < B + 2.

:- htile(A,B,A+1,B,A+2,B), vtile(A2,B2,A2,B2 + 1,A2,B2 +2),   A2 >=A , A2<= A+2,  B >= B2, B <= B2 +2.




