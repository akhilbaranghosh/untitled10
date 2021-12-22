%%%-------------------------------------------------------------------
%%% @author akhil
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Dec 2021 15:49
%%%-------------------------------------------------------------------
-module(main).
-author("akhil").
%% API
-export([start/1,average/1,sending_numbers/2,print_numbers/0]).
%%factorial(0,Acc) -> Acc;
%%factorial(N,Acc) -> factorial(N-1,Acc*N).

start(X)->
  io:fwrite("the value of 10 ~p :",[X]).

average(L)->
  receive
    N ->
      Avg=(lists:nth(1,L)+N)/2,
      io:fwrite("cuerrent average: ~p~n",[Avg]),
      average([Avg|L])
  end.
print_numbers()->
  receive
    N ->
      io:fwrite("the number sent is:~p~n",[N]),
      print_numbers()
  end.

sending_numbers(1,Pid)->Pid!1;
sending_numbers(N,Pid)->
  Pid!N,
%%  io:fwrite("number ~p~n",[N]),
  sending_numbers(N-1,Pid).

