# EMS API Documentation
#
# Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
#
# OpenAPI spec version: 0.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' UpdateGroupObject Class
#'
#' @field fieldName 
#' @field users 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateGroupObject <- R6::R6Class(
  'UpdateGroupObject',
  public = list(
    `fieldName` = NULL,
    `users` = NULL,
    initialize = function(`fieldName`, `users`){
      if (!missing(`fieldName`)) {
        stopifnot(is.character(`fieldName`), length(`fieldName`) == 1)
        self$`fieldName` <- `fieldName`
      }
      if (!missing(`users`)) {
        stopifnot(is.list(`users`), length(`users`) != 0)
        lapply(`users`, function(x) stopifnot(is.character(x)))
        self$`users` <- `users`
      }
    },
    toJSON = function() {
      UpdateGroupObjectObject <- list()
      if (!is.null(self$`fieldName`)) {
        UpdateGroupObjectObject[['fieldName']] <- self$`fieldName`
      }
      if (!is.null(self$`users`)) {
        UpdateGroupObjectObject[['users']] <- self$`users`
      }

      UpdateGroupObjectObject
    },
    fromJSON = function(UpdateGroupObjectJson) {
      UpdateGroupObjectObject <- jsonlite::fromJSON(UpdateGroupObjectJson)
      if (!is.null(UpdateGroupObjectObject$`fieldName`)) {
        self$`fieldName` <- UpdateGroupObjectObject$`fieldName`
      }
      if (!is.null(UpdateGroupObjectObject$`users`)) {
        self$`users` <- UpdateGroupObjectObject$`users`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "fieldName": %s,
           "users": [%s]
        }',
        self$`fieldName`,
        lapply(self$`users`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(UpdateGroupObjectJson) {
      UpdateGroupObjectObject <- jsonlite::fromJSON(UpdateGroupObjectJson)
      self$`fieldName` <- UpdateGroupObjectObject$`fieldName`
      self$`users` <- UpdateGroupObjectObject$`users`
    }
  )
)
