{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Request.ApiDoc exposing (aPI, getAPIJSONFormat, getAPIYAMLFormat, getAPIYAMLFormat EndPoint)

import Http
import Json.Decode as Decode


basePath : String
basePath =
    "http://localhost:8080"


{-
    |      Used to retrieve all the API EndPoints.
-}
aPI : Http.Request ()
aPI =
    { method = "GET"
    , url = basePath ++ "/api"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectStringResponse (\_ -> Ok ())
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Get API in JSON format
-}
getAPIJSONFormat : Http.Request ()
getAPIJSONFormat =
    { method = "GET"
    , url = basePath ++ "/api/apidoc.json"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectStringResponse (\_ -> Ok ())
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   Get API in YAML format
-}
getAPIYAMLFormat : Http.Request ()
getAPIYAMLFormat =
    { method = "GET"
    , url = basePath ++ "/api/apidoc.yaml"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectStringResponse (\_ -> Ok ())
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
    |      Used to retrieve an EndPoint for the API EndPoints.
-}
getAPIYAMLFormat EndPoint : String -> Http.Request ()
getAPIYAMLFormat EndPoint item =
    { method = "GET"
    , url = basePath ++ "/api/" ++ item ++ "/apidoc.yaml"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectStringResponse (\_ -> Ok ())
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


