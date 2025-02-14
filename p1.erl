% team: THomas Carriero, Minjae Kung
-module(p1).
-export([process_number/1, factorial/1]).

process_number(N) when not is_integer(N) ->
    io:format("Not an integer.~n");

process_number(N) when N < 0 ->
    Result = math:pow(abs(N), 7),
    io:format("Negative number detected. |~p|^7 = ~p~n", [N, Result]);

process_number(0) ->
    io:format("0~n");

process_number(N) when N > 0, N rem 7 == 0 ->
    Root = math:pow(N, 1/5),
    io:format("Multiple of 7. 5th root of ~p = ~p~n", [N, Root]);

process_number(N) when N > 0 ->
    Factorial = factorial(N),
    io:format("Not a multiple of 7. Factorial(~p) = ~p~n", [N, Factorial]).

factorial(0) -> 1;
factorial(N) -> N * factorial(N - 1).
