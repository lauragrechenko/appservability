%%%-------------------------------------------------------------------
%% @doc appservability public API
%% @end
%%%-------------------------------------------------------------------

-module(appservability_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    appservability_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
