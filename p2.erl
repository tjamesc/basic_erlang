% team: Thomas Carriero, Minjae Kung
-module(p2).
-export([start/0, loop/0]).

start() ->
    io:format("Enter numbers to analyze. Type 0 to exit.~n"),
    loop().

loop() ->
    {ok, [Num]} = io:fread("Enter a number: ", "~d"),
    p1:process_number(Num),
    case Num of
        0 -> io:format("Exiting program.~n");
        _ -> loop()
    end.
