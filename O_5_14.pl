% input bid(r,p,b), b = yes, no, maybe, referee r, for paper p
#const k=2.
b(yes;no;maybe).
referee(1;2;3).
paper(1;2;3).

bid(1,1,no).
bid(1,2,yes).
bid(1,3,maybe).
bid(2,1,yes).
bid(2,2,yes).
bid(2,3,maybe).
bid(3,1,maybe).

{review(R,P) : referee(R), paper(P)} 1 :- R=1..3 , P=1..3.    % {r(1,1),r(1,2),r(1,3),r(2,1),r(2,2),r(2,3)}

:- review(R,P), bid(R,P,no).

:- #count{ R,P : review(R,P), R=1..3} !=k , P=1..3.

workload(R,N) :- N = #count{ R,P  : review(R,P), P=1..3}, R=1..3.

:- workload(R1,N1), workload(R2,N2), R1 != R2, |N1-N2| > 1.

#maximise{ X  : review(R,P) , bid(R,P,yes), X =1}.

#show review/2.
#show workload/2.


