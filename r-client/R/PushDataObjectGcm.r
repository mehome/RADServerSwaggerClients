# EMS API Documentation
#
# Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
#
# OpenAPI spec version: 0.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PushDataObjectGcm Class
#'
#' @field message 
#' @field title 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PushDataObjectGcm <- R6::R6Class(
  'PushDataObjectGcm',
  public = list(
    `message` = NULL,
    `title` = NULL,
    initialize = function(`message`, `title`){
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
    },
    toJSON = function() {
      PushDataObjectGcmObject <- list()
      if (!is.null(self$`message`)) {
        PushDataObjectGcmObject[['message']] <- self$`message`
      }
      if (!is.null(self$`title`)) {
        PushDataObjectGcmObject[['title']] <- self$`title`
      }

      PushDataObjectGcmObject
    },
    fromJSON = function(PushDataObjectGcmJson) {
      PushDataObjectGcmObject <- jsonlite::fromJSON(PushDataObjectGcmJson)
      if (!is.null(PushDataObjectGcmObject$`message`)) {
        self$`message` <- PushDataObjectGcmObject$`message`
      }
      if (!is.null(PushDataObjectGcmObject$`title`)) {
        self$`title` <- PushDataObjectGcmObject$`title`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "message": %s,
           "title": %s
        }',
        self$`message`,
        self$`title`
      )
    },
    fromJSONString = function(PushDataObjectGcmJson) {
      PushDataObjectGcmObject <- jsonlite::fromJSON(PushDataObjectGcmJson)
      self$`message` <- PushDataObjectGcmObject$`message`
      self$`title` <- PushDataObjectGcmObject$`title`
    }
  )
)
