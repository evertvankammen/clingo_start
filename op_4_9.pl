#const n=10.
#const r=2.

{in(I,1..r)} =1 :- I = 1..n.

:- in(A,K), in(B,K), in(2*B - A,K), A!=B.

