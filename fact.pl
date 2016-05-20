fact(0,1).
fact(N,R) :-
N>0,
Nbis is N-1,
fact(Nbis,U),
R is N*U.


fact2(0,1).
fact2(N,R) :- N > 0, fact2(N,1,R).
fact2(0,Acc,R) :- R is Acc.
fact2(N,Acc,R) :- N>0, Nprim is N-1, fact2(Nprim,Acc*N,R).

fact3(0,1).
fact3(N,R) :- N > 0, fact3(N,R,1).
fact3(0,R,R).
fact3(N,R,Acc) :- N>0, Nprim is N-1, AccValue is Acc*N, fact3(Nprim,R,AccValue).