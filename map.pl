square(X,Y):- Y is X*X.
biggerThan(X,Y):- X > Y.


map2(P,[],[]).
map2(P,[H1|T1],[H2|T2]):- call(P,H1,H2), map2(P,T1,T2).

filter2(P,[],[]).
filter2(P,[H1|T1],[H1|T2]):- call(P,H1,2), filter2(P,T1,T2),!.
filter2(P,[H1|T1],R):- filter2(P,T1,R). 


filter3(P,[],[]).
filter3(P,[H1|T1],[H1|T2]):- call(P,H1,2), filter3(P,T1,T2).
filter3(P,[H1|T1],R):- not(call(P,H1,2)), filter3(P,T1,R). 

notmember(E,[]).
notmember(E,[H|T]):- E\=H, notmember(E,T). 
disjoint(L1,L2):- forall(member(E,L1),notmember(E,L2)).

subset3(L1,L2):- forall(member(E,L1),member(E,L2)).

intersection2(L1,L2,R):-findall(E,(member(E,L1),member(E,L2)),R).

times(A,B,C) :- C is A*B.

fold2(Fonc,[],Neutral,Neutral). 
fold2(Fonc,[H|T],Neutral,Res) :- fold2(Fonc,T,Neutral,Res2), call(Fonc,H, Res2, Res).


//Termineale
fold3(Fonc,[],Acc,Acc). 
fold3(Fonc,[H|T],Acc,Res) :- call(Fonc,Acc,H,Res2), fold3(Fonc,T,Res2,Res).