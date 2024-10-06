
% input C(X):, C(cabc), C(ou) etc
c(cabc).
c(ou).
c(aaa).
c(z).

% all orders


min(Z)  :- Z= #min{X: c(X)}.
max(Z)  :- Z= #max{X: c(X)}.
xxx(Z)  :- Z= #max{X: c(X), X=ou;z}.

%{comp(X,Y) : c(X), c(Y)}

a_before_b(A,B) :- #min{A;B} = A, c(A), c(B).
a_after_b(A,B) :- #max{A;B} = A, c(A), c(B).









