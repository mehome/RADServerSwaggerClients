{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.EdgeModuleResourceUpdatedObject exposing (EdgeModuleResourceUpdatedObject, edgeModuleResourceUpdatedObjectDecoder, edgeModuleResourceUpdatedObjectEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias EdgeModuleResourceUpdatedObject =
    { updated : String
    }


edgeModuleResourceUpdatedObjectDecoder : Decoder EdgeModuleResourceUpdatedObject
edgeModuleResourceUpdatedObjectDecoder =
    decode EdgeModuleResourceUpdatedObject
        |> required "updated" Decode.string



edgeModuleResourceUpdatedObjectEncoder : EdgeModuleResourceUpdatedObject -> Encode.Value
edgeModuleResourceUpdatedObjectEncoder model =
    Encode.object
        [ ( "updated", Encode.string model.updated )
        ]


