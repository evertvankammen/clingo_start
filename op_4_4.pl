#const n=10.
#const r=3.

{in(I,1..r)} =1 :- I = 1..n.

J=I :- in(I,K), in(J,K), in(I+J,K).
