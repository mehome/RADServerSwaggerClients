{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.EdgeModuleAddObject exposing (EdgeModuleAddObject, edgeModuleAddObjectDecoder, edgeModuleAddObjectEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias EdgeModuleAddObject =
    { modulename : String
    , protocol : String
    , protocolprops : String
    }


edgeModuleAddObjectDecoder : Decoder EdgeModuleAddObject
edgeModuleAddObjectDecoder =
    decode EdgeModuleAddObject
        |> required "modulename" Decode.string
        |> required "protocol" Decode.string
        |> required "protocolprops" Decode.string



edgeModuleAddObjectEncoder : EdgeModuleAddObject -> Encode.Value
edgeModuleAddObjectEncoder model =
    Encode.object
        [ ( "modulename", Encode.string model.modulename )
        , ( "protocol", Encode.string model.protocol )
        , ( "protocolprops", Encode.string model.protocolprops )
        ]


