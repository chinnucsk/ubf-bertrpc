%% @doc Low-level functions for encoding and decoding the UBF(A)
%% protocol for BERT.
%%

-module(bert).
-behaviour(contract_proto).

-export([proto_vsn/0, proto_driver/0, proto_packet_type/0]).
-export([encode/1, encode/2]).
-export([decode_init/0, decode_init/1, decode_init/2, decode/1, decode/2, decode/3]).


%%---------------------------------------------------------------------
proto_vsn()         -> 'bert1.0'.
proto_driver()      -> bert_driver.
proto_packet_type() -> 4.


%%---------------------------------------------------------------------
-spec encode(term()) -> no_return().
encode(X) ->
    encode(X, ?MODULE).

-spec encode(term(), module()) -> no_return().
encode(_X, _Mod) ->
    %% see bert_driver.erl
    exit(notimplemented).


%%---------------------------------------------------------------------
-spec decode(binary()) -> no_return().
decode(X) ->
    decode(X, ?MODULE).

-spec decode(binary(), module()) -> no_return().
decode(X, Mod) ->
    decode(X, Mod, decode_init()).

-spec decode(binary(), module(), term()) -> no_return().
decode(_X, _Mod, _Cont) ->
    %% see bert_driver.erl
    exit(notimplemented).

-spec decode_init() -> no_return().
decode_init() ->
    decode_init(false).

-spec decode_init(boolean()) -> no_return().
decode_init(Safe) ->
    decode_init(Safe, <<>>).

-spec decode_init(boolean(), binary()) -> no_return().
decode_init(_Safe, _Binary) ->
    %% see bert_driver.erl
    exit(notimplemented).
