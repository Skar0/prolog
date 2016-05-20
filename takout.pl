takout(X,[],[]).
takout(X,[X|T],R):- takout(X,T,R). 
takout(X,[H|T],[H|R]):- X \= H, takout(X,T,R).

Attention X \:=H sinon il va unifier H avec X pour que le prédicat soit vrai
Moins puissant
takout2(X,[X|T1],T1).
takout2(X,[H|T],[H|R]):- takout(X,T,R).
