{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.UpdateGroupObject exposing (UpdateGroupObject, updateGroupObjectDecoder, updateGroupObjectEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias UpdateGroupObject =
    { fieldName : Maybe String
    , users : Maybe (List String)
    }


updateGroupObjectDecoder : Decoder UpdateGroupObject
updateGroupObjectDecoder =
    decode UpdateGroupObject
        |> optional "fieldName" (Decode.nullable Decode.string) Nothing
        |> optional "users" (Decode.nullable (Decode.list Decode.string)) Nothing



updateGroupObjectEncoder : UpdateGroupObject -> Encode.Value
updateGroupObjectEncoder model =
    Encode.object
        [ ( "fieldName", withDefault Encode.null (map Encode.string model.fieldName) )
        , ( "users", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.users) )
        ]


