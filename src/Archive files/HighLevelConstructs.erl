%%%-------------------------------------------------------------------
%%% @author akhil
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. Feb 2022 18:43
%%%-------------------------------------------------------------------
-module('HighLevelConstructs').
-author("akhil").

%% API
-export([area/1,start/0,quick_sort/1]).

%% area of the following geometrical figures
start() ->
  area({rectangle, 5, 8}).

area({square, Side}) -> Side*Side;
area({rectangle, Length, Breadth}) -> Length * Breadth;
area({circle, Radius}) -> math:pi() * Radius *Radius.

quick_sort([]) -> [];
quick_sort([H|T]) ->
  quick_sort([A || A <- T, A=<H]) ++ [H] ++ quick_sort([B || B <- T,B>H]).