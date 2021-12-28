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
%%-file(akhil,main).
-export([start/0,average/2,sending_numbers/2,print_numbers/0]).
%%factorial(0,Acc) -> Acc;
%%factorial(N,Acc) -> factorial(N-1,Acc*N).
start()->
  {ok, Read}=file:open("C:\\Users\\akhil\\IdeaProjects\\untitled10\\src\\akhil.txt",read),
  {ok, Write}=file:open("C:\\Users\\akhil\\IdeaProjects\\untitled10\\src\\akhil_write.txt",write),
  Val1=io:get_line(Read,'\n'),
  io:fwrite(Val1),
  io:format(Write,"~s~n",["Hello World!!"]),
  'Executed Successfully'.
%%start(X)->
%%  io:fwrite("the value of 10 ~p :",[X]).

average(L,Pid)->
  receive
    N ->
      Avg=(lists:nth(1,L)+N)/2,
      Pid!Avg,
      io:fwrite("cuerrent average: ~p~n",[Avg]),
      average([Avg|L],Pid)
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

