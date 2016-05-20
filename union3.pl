union3([],R,R).
union3([H|T],L2,R) :- member(H,L2), union3(T,L2,R),!.
union3([H|T],L2,[H|R]) :- union3(T,L2,R).

inter3([],_,[]).
inter3([H|T],L2,[H|R]) :- member(H,L2), inter3(T,L2,R),!.
inter3([H|T],L2,R) :- inter3(T,L2,R).
