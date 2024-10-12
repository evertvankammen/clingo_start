
%p(a).
%p(a):- #count{X : p(X)} > 0.

not q(a).
q(a):- #count{X : q(X)} < 1.
