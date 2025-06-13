%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definición de listas.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

append([], E, [E]).
append([X|L1], E, [X|L3]) :- append(L1, E, L3).

delete([], _, []).
delete([E|Xs], E, Xs).
delete([X|Xs], E, [X|Ys]) :- X \= E, delete(Xs, E, Ys).