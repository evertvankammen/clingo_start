weight(a,12;b,1;c,4;d,2;e,1).
value(a,4;b,2;c,10;d,2;e,1).

#const maxweight=15.

maxitems(I,V) :- weight(I,N), V = maxweight/N.

{in(I,N) : N=0..V} = 1 :- maxitems(I,V).

w(S) :- S = #sum{T,I : in(I,N), weight(I,W), T= N*W }.

:- w(S), S > maxweight.

#maximize{S: w(S)}.

#show in/2.
#show w/1.
