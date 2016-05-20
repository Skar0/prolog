inverse([],Acc,Acc).
inverse([H|T],Acc,R):-inverse(T,[H|Acc],R).

