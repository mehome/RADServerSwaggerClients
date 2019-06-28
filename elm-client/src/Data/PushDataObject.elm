{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.PushDataObject exposing (PushDataObject, pushDataObjectDecoder, pushDataObjectEncoder)

import Data.PushDataObjectGcm exposing (PushDataObjectGcm, pushDataObjectGcmDecoder, pushDataObjectGcmEncoder)
import Data.PushDataObjectAps exposing (PushDataObjectAps, pushDataObjectApsDecoder, pushDataObjectApsEncoder)
import Data.PushDataObjectExtras exposing (PushDataObjectExtras, pushDataObjectExtrasDecoder, pushDataObjectExtrasEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias PushDataObject =
    { gcm : Maybe PushDataObjectGcm
    , aps : Maybe PushDataObjectAps
    , extras : Maybe PushDataObjectExtras
    }


pushDataObjectDecoder : Decoder PushDataObject
pushDataObjectDecoder =
    decode PushDataObject
        |> optional "gcm" (Decode.nullable pushDataObjectGcmDecoder) Nothing
        |> optional "aps" (Decode.nullable pushDataObjectApsDecoder) Nothing
        |> optional "extras" (Decode.nullable pushDataObjectExtrasDecoder) Nothing



pushDataObjectEncoder : PushDataObject -> Encode.Value
pushDataObjectEncoder model =
    Encode.object
        [ ( "gcm", withDefault Encode.null (map pushDataObjectGcmEncoder model.gcm) )
        , ( "aps", withDefault Encode.null (map pushDataObjectApsEncoder model.aps) )
        , ( "extras", withDefault Encode.null (map pushDataObjectExtrasEncoder model.extras) )
        ]

