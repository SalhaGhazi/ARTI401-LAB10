%TASK1

%square_area(Side, Area), square_perimeter(Side, Perimeter)
square_area(Side, Area) :- Area is Side * Side.
square_perimeter(Side, Perimeter) :- Perimeter is 4 * Side.

%rect_area(Width, Height, Area), rect_perimeter(Width, Height,Perimeter)
rect_area(Width, Height, Area) :- Area is Width * Height.
rect_perimeter(Width, Height, Perimeter) :- Perimeter is 2 * (Width + Height).

%tri_area(Base, Height, Area), tri_perimeter(A, B, C, Perimeter)
tri_area(Base, Height, Area) :- Area is 0.5 * Base * Height.
tri_perimeter(A, B, C, Perimeter) :- Perimeter is A + B + C.



%TASK2

%Dataset
valid_user(admin, '1234').
valid_user(ali, 'pass55').

%RULE
login :-
    login_attempts(3).

login_attempts(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

login_attempts(Attempts) :-
    Attempts > 0,
    write('Enter Username: '), read(U),
    write('Enter Password: '), read(P),
    (   valid_user(U, P)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        Remaining is Attempts - 1,
        login_attempts(Remaining)
    ).


