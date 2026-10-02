% Facts

in_room(monkey).
in_room(chair).
in_room(banana).

clear(monkey).
tall(chair).

can_climb(monkey, chair).
can_push(monkey, chair).

at(monkey, door).
at(chair, window).
at(banana, center).

clever(monkey).

% Rules

moved_under(chair, banana) :-
    can_push(monkey, chair),
    at(banana, center).

get_on(monkey, chair) :-
    can_climb(monkey, chair).

near(monkey, banana) :-
    moved_under(chair, banana),
    get_on(monkey, chair).

can_reach(monkey, banana) :-
    clever(monkey),
    near(monkey, banana).