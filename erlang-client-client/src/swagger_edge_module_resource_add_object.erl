-module(swagger_edge_module_resource_add_object).

-export([encode/1]).

-export_type([swagger_edge_module_resource_add_object/0]).

-type swagger_edge_module_resource_add_object() ::
    #{ 'resourcename' := binary()
     }.

encode(#{ 'resourcename' := Resourcename
        }) ->
    #{ 'resourcename' => Resourcename
     }.
