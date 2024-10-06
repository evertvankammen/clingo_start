first_name(abner;bruce;chuck;duane).
last_name(engels;foster;gunter;halevy).
pet(iguana;jackal;king_cobra;llama).

{full_name(F,L) : last_name(L)} = 1 :- first_name(F).
{owns(F,P) : pet(P)} = 1 :- first_name(F).

F1 = F2 :- full_name(F1,L), full_name(F2,L). % uitgesloten: achternamen met meerdere voornamen abner engels en bruce engels mogen niet
F1 = F2 :- owns(F1,P), owns(F2,P). % bij iedere pet hoort 1 voornaam.


