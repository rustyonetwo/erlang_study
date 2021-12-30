-module(geometry).
-export([test/0, area/1]).

area({rectangle, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side;
area({circle, Radius}) -> 3.14159 * Radius * Radius;
area({right_triangle, A, B}) -> math:sqrt(A*A + B*B).

test() ->
    12 = area({rectangle, 3, 4}),
    144 = area({square, 12}),
    tests_worked.