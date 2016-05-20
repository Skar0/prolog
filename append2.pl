


preorder(leaf(X),R) :- R = [X].
preorder(tree(X,Y,Z),R) :- preorder(Y,R2),preorder(Z,R3), append([X|R2],R3,R).

inorder(leaf(X),R) :- R = [X].
inorder(tree(X,Y,Z),R) :- inorder(Y,R2),inorder(Z,R3), append(R2,[X|R3],R).

postorder(leaf(X),R) :- R = [X].
postorder(tree(X,Y,Z),R) :- postorder(Y,R2),postorder(Z,R3), append(R2,R3,RTemp), append(RTemp,[X],R).


preorder2(X,P):- findall(E,preorder3(X,E),P).

preorder3(tree(X,_,_),X).
preorder3(leaf(X),X).
preorder3(tree(_,Y,_),E):-
	preorder3(Y,E).
preorder3(tree(_,_,Z),E):-
	preorder3(Z,E).
