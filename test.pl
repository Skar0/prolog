
adjacent(2,4).
adjacent(4,2).
adjacent(1,X):-between(2,5,X).
adjacent(X,1):-between(2,5,X).
adjacent(X,Y):-between(2,4,X),Y is X+1.
adjacent(Y,X):-between(2,4,X),Y is X+1.

conflit(Coloriage):-adjacent(X,Y),color(X, Couleur, Coloriage),color(Y, Couleur, Coloriage).
conflit(X,Y,Coloriage):-adjacent(X,Y),color(X, Couleur, Coloriage),color(Y,Couleur,Coloriage).


color(1,bleu,coloriage1).
color(2,rouge,coloriage1).
color(3,vert,coloriage1).
color(4,jaune,coloriage1).
color(5,rouge,coloriage1).

color(1,vert,coloriage2).
color(2,rouge,coloriage2).
color(3,vert,coloriage2).
color(4,jaune,coloriage2).
color(5,vert,coloriage2).

color(1,bleu,coloriage3).
color(2,bleu,coloriage3).
color(3,bleu,coloriage3).
color(4,bleu,coloriage3).
color(5,bleu,coloriage3).