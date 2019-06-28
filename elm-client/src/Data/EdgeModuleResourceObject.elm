{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.EdgeModuleResourceObject exposing (EdgeModuleResourceObject, edgeModuleResourceObjectDecoder, edgeModuleResourceObjectEncoder)

import Data.MetaEdgeModuleObject exposing (MetaEdgeModuleObject, metaEdgeModuleObjectDecoder, metaEdgeModuleObjectEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias EdgeModuleResourceObject =
    { resourcename : String
    , modulename : String
    , moduleid : String
    , meta : MetaEdgeModuleObject
    }


edgeModuleResourceObjectDecoder : Decoder EdgeModuleResourceObject
edgeModuleResourceObjectDecoder =
    decode EdgeModuleResourceObject
        |> required "resourcename" Decode.string
        |> required "modulename" Decode.string
        |> required "moduleid" Decode.string
        |> required "_meta" metaEdgeModuleObjectDecoder



edgeModuleResourceObjectEncoder : EdgeModuleResourceObject -> Encode.Value
edgeModuleResourceObjectEncoder model =
    Encode.object
        [ ( "resourcename", Encode.string model.resourcename )
        , ( "modulename", Encode.string model.modulename )
        , ( "moduleid", Encode.string model.moduleid )
        , ( "_meta", metaEdgeModuleObjectEncoder model.meta )
        ]

