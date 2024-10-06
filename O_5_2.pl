% number of classes

% input k floors
% where/2  met (c,i) class c taught on floor i.
#const  k=3.

where(a,1).
where(b,1).
where(c,2).
where(d,2).
where(e,2).
where(e,3).

nr_floors(F):- F = #max{ I : where(C,I)}.

% number of

% gevraagd howmany(floor,nr_classes)

howmany(I,N) :- N = #count{X : where(X,I)}, I=1..F, nr_floors(F).

