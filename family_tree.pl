% Family Tree

% Facts

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

male(tom).
male(bob).
male(pat).
male(jim).

female(pam).
female(liz).
female(ann).

% Rules

% Sisters
sisters(X, Y) :-
    female(X),
    female(Y),
    X \= Y,
    parent(Z, X),
    parent(Z, Y).

% Brothers
brother(X, Y) :-
    male(X),
    male(Y),
    X \= Y,
    parent(Z, X),
    parent(Z, Y).

% Grandmother
grandma(X, Y) :-
    female(X),
    parent(X, Z),
    parent(Z, Y).

% Grandfather
grandpa(X, Y) :-
    male(X),
    parent(X, Z),
    parent(Z, Y).