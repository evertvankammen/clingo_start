
#const m=3.
votecount(1,400;2,200;3,300).

% p/3, (R,Pos,C) R ranking nr, Pos is position of candidate C (1,2,3)
% 1,1,3; 1,2,2; 1,3,1 betekend:  C > B > A Candidate 3 has position 2 of ranking 1

p(
1,1,3; 1,2,2; 1,3,1;
2,1,2; 2,2,3; 2,3,1;
3,1,1; 3,2,2; 3,3,3
).

% posScore(R,C,X*N) :- p(R,Pos,C), X=m-Pos, votecount(R,N).

% score(C,N) :- C = 1..m, N = #sum{S,R: posScore(R,C,S)}.

% loser(C) :- score(C,N), score(C1,N1), N1 > N.

% winner(C) :- C =1..m, not loser(C).


prefer_J_over_N(J,N,Z) :- J=1..m, N=1..m, J != N, Z = #sum{ X : votecount(I,X), p(I,PosJ,J), p(I,PosN,N), PosJ<PosN, I=1..m}.

score(J,2*S1 + S2) :- S1 = #sum{ X,J  :  prefer_J_over_N(J,N,Z1), prefer_J_over_N(N,J,Z2), N=1..m, Z1 > Z2, X=1 },
                        S2 = #sum{ X,J  :  prefer_J_over_N(J,N,Z1), prefer_J_over_N(N,J,Z2), N=1..m, Z1 = Z2, X=1 },J=1..m.


#show prefer_J_over_N/3.
#show score/2.
