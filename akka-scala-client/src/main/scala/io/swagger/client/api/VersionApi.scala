/**
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */
package io.swagger.client.api

import io.swagger.client.model.VersionObject
import io.swagger.client.core._
import io.swagger.client.core.CollectionFormats._
import io.swagger.client.core.ApiKeyLocations._

object VersionApi {

  /**
   *  |      Used to retrieve the &#x60;Version&#x60; of the EMS Server.
   * 
   * Expected answers:
   *   code 200 : VersionObject (Ok. Provides the current version of the EMS Server)
   * 
   * @param xEmbarcaderoApplicationId 
   * @param xEmbarcaderoAppSecret 
   * @param xEmbarcaderoMasterSecret 
   */
  def getVersion(xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None): ApiRequest[VersionObject] =
    ApiRequest[VersionObject](ApiMethods.GET, "http://localhost:8080", "/version", "application/json")
      .withHeaderParam("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
      .withHeaderParam("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
      .withHeaderParam("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)
      .withSuccessResponse[VersionObject](200)
      

}

