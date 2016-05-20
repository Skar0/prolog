pgcd(A,A,A).
pgcd(A,B,C) :-
	A>B,
	P is A-B,
	pgcd(P,B,C).
pgcd(A,B,C) :-
	A<B,
	P is B-A,
	pgcd(A,P,C).