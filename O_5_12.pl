
% s(nr,value) , set met nr heeft waarde value
% sets die geen elementen gemeen hebben.

s(2,1;3,1;7,1).  % s_1 = {2,3,7}.
s(3,2;5,2;8,2).  % s_2 = {3,5,8}.
s(10,3;11,3;12,3).  % s_2 = {3,5,8}.
s(12,4;14,4;15,4).  % s_2 = {3,5,8}.

max(M) :- M = #max{I: s(X,I)}.

{in(1..M) : max(M)}.


I = J :- in(I), in(J), s(X,I), s(X,J). % als in(a) en in(b) in as dan zijn a en b pairwise disjoint.

#maximise{ Y  : in(X), Y =1 }.
%#show in/1.
