weight(a,12;b,1;c,4;d,2;e,1).
value(a,4;b,2;c,10;d,2;e,1).


volume(a,2;b,3;c,5;d,5;e,10).
#const maxweight=15.
#const maxvolume=15.

{in(a;b;c;d;e)}.

:- #sum{W,I : in(I), weight(I,W)} > maxweight.
:- #sum{W,I : in(I), volume(I,W)} > maxvolume.

#maximize{V,I: in(I), value(I,V)}.

#show in/1.
