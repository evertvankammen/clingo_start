
#const m=3.
votecount(1,400;2,200;3,300).

% p/3, (R,Pos,C) R ranking nr, Pos is position of candidate C (1,2,3)
% 1,1,3; 1,2,2; 1,3,1 betekend:  C > B > A Candidate 3 has position 2 of ranking 1

p(
1,1,3; 1,2,2; 1,3,1;
2,1,2; 2,2,3; 2,3,1;
3,1,1; 3,2,2; 3,3,3
).

posScore(R,C,X*N) :- p(R,Pos,C), X=m-Pos, votecount(R,N).

score(C,N) :- C = 1..m, N = #sum{S,R: posScore(R,C,S)}.

%loser(C) :- score(C,N), score(C1,N1), N1 > N.

winner(C) :- score(C,X), X=#max{N : score(C1,N)} .



#show score/2.
#show winner/1.
