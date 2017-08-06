-define(APP, partisan).
-define(PEER_IP, {127, 0, 0, 1}).
-define(PEER_PORT, 9000).
-define(LISTEN_ADDRS, [#{ip => ?PEER_IP, port => ?PEER_PORT}]).
-define(PEER_SERVICE_SERVER, partisan_peer_service_server).
-define(FANOUT, 5).
-define(CACHE, partisan_connection_cache).
-define(PARALLELISM, 1).

-type actor() :: binary().
-type listen_addr() :: #{ip => inet:ip_address(), port => non_neg_integer()}.
-type node_spec() :: #{name => node(),
                       listen_addrs => [listen_addr()],
                       parallelism => non_neg_integer()}.
-type message() :: term().
-type name() :: node().
-type partitions() :: [{reference(), node_spec()}].
-type ttl() :: non_neg_integer().
