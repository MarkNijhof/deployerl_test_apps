-module(test_app_1_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    setup_cowboy(),
    test_app_1_sup:start_link().

stop(_State) ->
    ok.

setup_cowboy() ->
    Port = 18433,
    lager:info("Test APP 1 is listening to TCP port: ~p~n", [Port]),
    Dispatch = cowboy_router:compile([{'_', get_routes()}]),
    {ok, _} = cowboy:start_http(http, 100,
                                [{port, Port}],
                                [{env, [{dispatch, Dispatch}]}]).

get_routes() ->
    [
     {"/", cowboy_static, {priv_file, test_app_1, "static/index.html"}}
    ].
