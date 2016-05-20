:- dynamic(fibo2/2).
fibo2(0,1).
fibo2(1,1).
fibo2(N,R):- N>1, Np is N-1, Npp is N-2, fibo2(Np,R1), fibo2(Npp, R2), R is R1+R2, asserta(fibo2(N,R)).