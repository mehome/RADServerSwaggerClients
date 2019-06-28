# EMS API Documentation
#
# Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
#
# OpenAPI spec version: 0.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PushWhereObjectDeviceToken Class
#'
#' @field $in 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PushWhereObjectDeviceToken <- R6::R6Class(
  'PushWhereObjectDeviceToken',
  public = list(
    `$in` = NULL,
    initialize = function(`$in`){
      if (!missing(`$in`)) {
        stopifnot(is.list(`$in`), length(`$in`) != 0)
        lapply(`$in`, function(x) stopifnot(is.character(x)))
        self$`$in` <- `$in`
      }
    },
    toJSON = function() {
      PushWhereObjectDeviceTokenObject <- list()
      if (!is.null(self$`$in`)) {
        PushWhereObjectDeviceTokenObject[['$in']] <- self$`$in`
      }

      PushWhereObjectDeviceTokenObject
    },
    fromJSON = function(PushWhereObjectDeviceTokenJson) {
      PushWhereObjectDeviceTokenObject <- jsonlite::fromJSON(PushWhereObjectDeviceTokenJson)
      if (!is.null(PushWhereObjectDeviceTokenObject$`$in`)) {
        self$`$in` <- PushWhereObjectDeviceTokenObject$`$in`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "$in": [%s]
        }',
        lapply(self$`$in`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(PushWhereObjectDeviceTokenJson) {
      PushWhereObjectDeviceTokenObject <- jsonlite::fromJSON(PushWhereObjectDeviceTokenJson)
      self$`$in` <- PushWhereObjectDeviceTokenObject$`$in`
    }
  )
)
