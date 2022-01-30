%%%-------------------------------------------------------------------
%%% @author akhil
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. Dec 2021 11:56
%%% Coding: utf-8
%%%-------------------------------------------------------------------
-module(basics_of_erlang).
-author("akhil").
%%-vsn(1.05).
%% API
-export([start/0]).

start()->
  mnesia:create_table(employee).

%%-module(assi1).
%%
%%
%%-export([start/0]).
%%
%%start() ->
%%  {ok, S} = file:open("C:\\Users\\akhil\\eclipse-workspace\\ericsson_assignment1\\src\\map1.txt", read),
%% 	io:format(S,"~s~n",["Hello world!"]),
%% 	io:format(S,"~s~n",["Sorry for the delay!"]),
%%  Val1 = io:get_line(S,''),
%%  Val2 = io:get_line(S,''),
%%  io:fwrite(Val1),
%%  io:fwrite(Val2),
%%  file:close(S).
%%
%% say_something(_,0) ->
%% 	io:format("Done");
%%
%% say_something(Value, Times) ->
%%   io:fwrite("~s ~n", [Value]),
%%   say_something(Value,Times-1).
%%
%% start(Value1, Value2) ->
%%   spawn(assi1,say_something,[Value1,3]),
%%   spawn(assi1,say_something,[Value2,3]).

%% ====================================================================
%% API functions
%% ====================================================================
%% -compile(export_all).
%%
%% -record(robot, {name,type=industrial,hobbies,details=[]}).
%%
%% first_robot() -> #robot{name="Mechatron", type=handmade,details=[]}.
%%
%% car_factory(CorpName) -> #robot{name=CorpName,hobbies="building cars"}.
%%
%% start() ->
%% 	Crusher = #robot{name="Crusher", hobbies=["Crushing people","petting cats"]},
%% 	Crusher#robot.hobbies,
%% 	NestedBot = #robot{details=#robot{name="erNest"}},
%% 	(NestedBot#robot.details)#robot.name,
%% 	#robot.details.
%% -compile(export_all).

%% what_grade(X) ->
%% 	if X < 5 ->
%% 		io:fwrite("first")
%% 	; X == 5 ->
%% 		io:fwrite("second")
%% 	; X > 5 ->
%% 		  ok
%% 	end.
%% pred(Val) ->
%% 	if Val > 2 -> true
%% 	; true -> false
%% 	end.
%%
%% start() ->
%% 	Y = fun(X) -> if X >= 2 -> true
%% 				  ; X < 2 -> false
%% 				  end end,
%%
%%
%% 	lists:filtermap(Y,[2,6,7,7]).
%% 	red(2).
%% repairman(Rob) ->
%% 	Details = Rob#robot.details,
%% 	NewRob = Rob#robot{details=["Repaired by repairman"|Details]},
%% 	{repaired, NewRob}.

%% shortest_step([0],Prev,L) -> L;
%% shortest_step([C,A,B|R],Prev,L) ->
%% 	case Prev of
%% 		a -> if A < B -> shortest_step(R,a,L ++ [[a,A]])
%% 			 ; B + C > A -> shortest_step(R,a,L ++ [[a,A]])
%% 			 ; true -> shortest_step(R,b,L ++ [[x,C],[b,B]]) end;
%% 		b -> if B < A -> shortest_step(R,b,L ++ [[b,B]])
%% 			 ; A + C > B -> shortest_step(R,b,L ++ [[b,B]])
%% 			 ; true -> shortest_step(R,a,L ++ [[x,C],[a,A]]) end
%% 	end.
%% start() ->
%% %% 	L = [],
%% 	L = [50,10,30,5,90,20,40,2,25,10,8,0],
%% 	[A,B|T] = L,
%% 	if A < B -> shortest_step(T,a,[[a,A]])
%% 	; true -> shortest_step(T,b,[[b,B]])
%% 	end.
%%
%% main() ->
%% 	{ok, Bin} = file:read_file("map.txt"),
%% 	Map = parse_map(Bin),
%% 	io:format("~p~n",[optimal_path(Map)]),
%% 	erlang:halt(0).
%%
%% %% Transform a string into a readable map of triples
%% parse_map(Bin) when is_binary(Bin) ->
%% 	parse_map(binary_to_list(Bin));
%% parse_map(Str) when is_list(Str) ->
%% 	Values = [list_to_integer(X) || X <- string:tokens(Str,"\r\n\t ")],
%% 	group_vals(Values, []).
%%
%% group_vals([], Acc) ->
%% 	lists:reverse(Acc);
%% group_vals([A,B,X|Rest], Acc) ->
%% 	group_vals(Rest, [{A,B,X} | Acc]).
%%
%% %% Picks the best of all paths, woo!
%% optimal_path(Map) ->
%% 	{A,B} = lists:foldl(fun shortest_step/2, {{0,[]}, {0,[]}}, Map),
%% 	{_Dist,Path} = if hd(element(2,A)) =/= {x,0} -> A;
%% 					hd(element(2,B)) =/= {x,0} -> B
%% 				end,
%% 	lists:reverse(Path).
%%
%% shortest_step({A,B,X}, {{DistA,PathA}, {DistB,PathB}}) ->
%% 	OptA1 = {DistA + A, [{a,A}|PathA]},
%% 	OptA2 = {DistB + B + X, [{x,X}, {b,B}|PathB]},
%% 	OptB1 = {DistB + B, [{b,B}|PathB]},
%% 	OptB2 = {DistA + A + X, [{x,X}, {a,A}|PathA]},
%% 	{erlang:min(OptA1, OptA2), erlang:min(OptB1, OptB2)}.
%% 	L.

%% factor_list(N,L,Val) when Val > N -> L;
%% factor_list(N,L,Val) ->
%% 	case N rem Val == 0 of
%% 		true -> factor_list(N div Val, L ++ [Val],Val);
%% 		false -> factor_list(N, L, Val+1)
%% 	end.
%%
%% is_prime(N,N) -> true;
%% is_prime(N,Val) ->
%% 	case N rem Val == 0 of
%% 		true -> false;
%% 		false -> is_prime(N,Val+1)
%% 	end.
%%
%% prime_list([],Acc) -> Acc;
%% prime_list([H|T],Acc) ->
%% 	case is_prime(H,2) of
%% 		true -> prime_list(T,Acc ++ [H]);
%% 		false -> prime_list(T,Acc)
%% 	end.
%%
%% contains([],Val) ->false;
%% contains([H|T], Val) when H == Val -> true;
%% contains([H|T], Val) -> contains(T,Val).
%% goldbach([],P,N) ->false;
%% goldbach([H|T],P,N) ->
%% 	case contains([H|T],N-H) of
%% 		true -> [H,N-H];
%% 		false -> goldbach(T,P,N)
%% 	end.
%% pack_elements([],Pack,L,Prev) -> L ++ [Pack];
%% pack_elements([H|T],Pack,L,Prev) ->
%% 	case H == Prev of
%% 		true -> pack_elements(T,[H|Pack],L,Prev);
%% 		false -> pack_elements(T,[H],L ++ [Pack], H)
%% 	end.
%% gcd(N,D) when N rem D == 0 -> D;
%% gcd(N,D) -> gcd(D,N rem D).
%% start() ->
%% 	gcd(12,17).
%% 	goldbach(prime_list(lists:seq(2, 28),[]),[],28).
%% 	is_prime(6,2).
%% encode([],Acc,Prev,Count) -> [[Prev,Count]|Acc];
%% encode([H|T],Acc,Prev,Count) ->
%% 	case H == Prev of
%% 		true -> encode(T,Acc,H,Count+1);
%% 		false -> encode(T,[[Prev,Count]|Acc],H,1)
%% 	end.
%%
%% start()->
%% 	encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],[],a,0).
%% element_at(Acc,[],N) -> out_of_length;
%% element_at(Acc,[H|T],N) when N == Acc -> H;
%% element_at(Acc,[_|T],N) -> element_at(Acc+1,T,N).
%% flatten([],Acc) -> Acc;
%% flatten([H|T],Acc) when is_list(H) ->
%% 	 flatten(T,flatten(H,Acc));
%% flatten([H|T],Acc) -> flatten(T,[H] ++ Acc).
%% slice([H|T]) -> T.
%% compress([],Acc) -> Acc;
%% compress([H|T],Acc) ->
%% 	case contains(Acc,H) of
%% 		true -> compress(T,Acc);
%% 		false -> compress(T, Acc ++ [H])
%% 	end.
%%
%% contains([],Val) ->false;
%% contains([H|T], Val) when H == Val -> true;
%% contains([H|T], Val) -> contains(T,Val).
%% encode([],Map) -> Map;
%% encode([H|T], Map) ->
%% 	case maps:is_key(H,Map) of
%% 		true->
%% 	    	S = maps:get(H,Map),
%% 	    	D = S + 1,
%% 			O = Map#{H=>D},
%% 			encode(T,O);
%% 		false->
%% 			V = Map#{H=>1},
%% 			encode(T,V)
%% 	end.
%% list_conv([],Acc) -> Acc;
%% list_conv([H|T],Acc) ->
%% 	list_conv(T,[tuple_to_list(H)|Acc]).
%% start() ->
%% 	U = encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],#{}),
%% 	L = maps:to_list(U),
%% 	lists:reverse(list_conv(L,[])).
%% 	compress([1, 1, 2,3,3,2,1,5,8,5,9],[]).
%% 	maps:
%% 	flatten([a,[b,x,[[n,j,l],i,j,l],[b,[c,d],e]]],[]).
%% 	slice([1,2,3,4,5]).