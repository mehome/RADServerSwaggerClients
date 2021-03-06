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
package io.swagger.client.apis

import io.swagger.client.models.ChannelName
import io.swagger.client.models.FieldInstallationObject
import io.swagger.client.models.InstallationAddObject
import io.swagger.client.models.InstallationAddedObject
import io.swagger.client.models.InstallationObject
import io.swagger.client.models.UpdateInstallationObject
import io.swagger.client.models.UpdatedInstallationObject

import io.swagger.client.infrastructure.*

class InstallationsApi(basePath: kotlin.String = "http://localhost:8080") : ApiClient(basePath) {

    /**
    * Add Installation
    *  |      Used to add a new &#x60;Installation&#x60; object to the EMS database.
    * @param body Object to sign up a new EMS User in the EMS Server 
    * @param xEmbarcaderoApplicationId  (optional)
    * @param xEmbarcaderoAppSecret  (optional)
    * @param xEmbarcaderoMasterSecret  (optional)
    * @return InstallationAddedObject
    */
    @Suppress("UNCHECKED_CAST")
    fun addInstallation(body: InstallationAddObject, xEmbarcaderoApplicationId: kotlin.String, xEmbarcaderoAppSecret: kotlin.String, xEmbarcaderoMasterSecret: kotlin.String) : InstallationAddedObject {
        val localVariableBody: kotlin.Any? = body
        val localVariableQuery: MultiValueMap = mapOf()
        
        val contentHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf()
        val acceptsHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf("Accept" to "application/json")
        val localVariableHeaders: kotlin.collections.MutableMap<kotlin.String,kotlin.String> = mutableMapOf("X-Embarcadero-Application-Id" to xEmbarcaderoApplicationId, "X-Embarcadero-App-Secret" to xEmbarcaderoAppSecret, "X-Embarcadero-Master-Secret" to xEmbarcaderoMasterSecret)
        localVariableHeaders.putAll(contentHeaders)
        localVariableHeaders.putAll(acceptsHeaders)
        
        val localVariableConfig = RequestConfig(
            RequestMethod.POST,
            "/installations",
            query = localVariableQuery,
            headers = localVariableHeaders
        )
        val response = request<InstallationAddedObject>(
            localVariableConfig,
            localVariableBody
        )

        return when (response.responseType) {
            ResponseType.Success -> (response as Success<*>).data as InstallationAddedObject
            ResponseType.Informational -> TODO()
            ResponseType.Redirection -> TODO()
            ResponseType.ClientError -> throw ClientException((response as ClientError<*>).body as? String ?: "Client error")
            ResponseType.ServerError -> throw ServerException((response as ServerError<*>).message ?: "Server error")
            else -> throw kotlin.IllegalStateException("Undefined ResponseType.")
        }
    }

    /**
    * Delete Installation
    *  |      Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
    * @param id A Installation ID 
    * @param xEmbarcaderoApplicationId  (optional)
    * @param xEmbarcaderoAppSecret  (optional)
    * @param xEmbarcaderoMasterSecret  (optional)
    * @return void
    */
    fun deleteInstallation(id: kotlin.String, xEmbarcaderoApplicationId: kotlin.String, xEmbarcaderoAppSecret: kotlin.String, xEmbarcaderoMasterSecret: kotlin.String) : Unit {
        val localVariableBody: kotlin.Any? = null
        val localVariableQuery: MultiValueMap = mapOf()
        
        val contentHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf()
        val acceptsHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf()
        val localVariableHeaders: kotlin.collections.MutableMap<kotlin.String,kotlin.String> = mutableMapOf("X-Embarcadero-Application-Id" to xEmbarcaderoApplicationId, "X-Embarcadero-App-Secret" to xEmbarcaderoAppSecret, "X-Embarcadero-Master-Secret" to xEmbarcaderoMasterSecret)
        localVariableHeaders.putAll(contentHeaders)
        localVariableHeaders.putAll(acceptsHeaders)
        
        val localVariableConfig = RequestConfig(
            RequestMethod.DELETE,
            "/installations/{id}".replace("{"+"id"+"}", "$id"),
            query = localVariableQuery,
            headers = localVariableHeaders
        )
        val response = request<Unit>(
            localVariableConfig,
            localVariableBody
        )

        return when (response.responseType) {
            ResponseType.Success -> Unit
            ResponseType.Informational -> TODO()
            ResponseType.Redirection -> TODO()
            ResponseType.ClientError -> throw ClientException((response as ClientError<*>).body as? String ?: "Client error")
            ResponseType.ServerError -> throw ServerException((response as ServerError<*>).message ?: "Server error")
            else -> throw kotlin.IllegalStateException("Undefined ResponseType.")
        }
    }

    /**
    * Get Installation Channels
    *  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
    * @param xEmbarcaderoApplicationId  (optional)
    * @param xEmbarcaderoAppSecret  (optional)
    * @param xEmbarcaderoMasterSecret  (optional)
    * @return kotlin.Array<ChannelName>
    */
    @Suppress("UNCHECKED_CAST")
    fun getChannels(xEmbarcaderoApplicationId: kotlin.String, xEmbarcaderoAppSecret: kotlin.String, xEmbarcaderoMasterSecret: kotlin.String) : kotlin.Array<ChannelName> {
        val localVariableBody: kotlin.Any? = null
        val localVariableQuery: MultiValueMap = mapOf()
        
        val contentHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf()
        val acceptsHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf("Accept" to "application/json")
        val localVariableHeaders: kotlin.collections.MutableMap<kotlin.String,kotlin.String> = mutableMapOf("X-Embarcadero-Application-Id" to xEmbarcaderoApplicationId, "X-Embarcadero-App-Secret" to xEmbarcaderoAppSecret, "X-Embarcadero-Master-Secret" to xEmbarcaderoMasterSecret)
        localVariableHeaders.putAll(contentHeaders)
        localVariableHeaders.putAll(acceptsHeaders)
        
        val localVariableConfig = RequestConfig(
            RequestMethod.GET,
            "/installations/channels",
            query = localVariableQuery,
            headers = localVariableHeaders
        )
        val response = request<kotlin.Array<ChannelName>>(
            localVariableConfig,
            localVariableBody
        )

        return when (response.responseType) {
            ResponseType.Success -> (response as Success<*>).data as kotlin.Array<ChannelName>
            ResponseType.Informational -> TODO()
            ResponseType.Redirection -> TODO()
            ResponseType.ClientError -> throw ClientException((response as ClientError<*>).body as? String ?: "Client error")
            ResponseType.ServerError -> throw ServerException((response as ServerError<*>).message ?: "Server error")
            else -> throw kotlin.IllegalStateException("Undefined ResponseType.")
        }
    }

    /**
    * Get Installation
    *  |      Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
    * @param id A Installation ID 
    * @param xEmbarcaderoApplicationId  (optional)
    * @param xEmbarcaderoAppSecret  (optional)
    * @param xEmbarcaderoMasterSecret  (optional)
    * @return InstallationObject
    */
    @Suppress("UNCHECKED_CAST")
    fun getInstallation(id: kotlin.String, xEmbarcaderoApplicationId: kotlin.String, xEmbarcaderoAppSecret: kotlin.String, xEmbarcaderoMasterSecret: kotlin.String) : InstallationObject {
        val localVariableBody: kotlin.Any? = null
        val localVariableQuery: MultiValueMap = mapOf()
        
        val contentHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf()
        val acceptsHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf("Accept" to "application/json")
        val localVariableHeaders: kotlin.collections.MutableMap<kotlin.String,kotlin.String> = mutableMapOf("X-Embarcadero-Application-Id" to xEmbarcaderoApplicationId, "X-Embarcadero-App-Secret" to xEmbarcaderoAppSecret, "X-Embarcadero-Master-Secret" to xEmbarcaderoMasterSecret)
        localVariableHeaders.putAll(contentHeaders)
        localVariableHeaders.putAll(acceptsHeaders)
        
        val localVariableConfig = RequestConfig(
            RequestMethod.GET,
            "/installations/{id}".replace("{"+"id"+"}", "$id"),
            query = localVariableQuery,
            headers = localVariableHeaders
        )
        val response = request<InstallationObject>(
            localVariableConfig,
            localVariableBody
        )

        return when (response.responseType) {
            ResponseType.Success -> (response as Success<*>).data as InstallationObject
            ResponseType.Informational -> TODO()
            ResponseType.Redirection -> TODO()
            ResponseType.ClientError -> throw ClientException((response as ClientError<*>).body as? String ?: "Client error")
            ResponseType.ServerError -> throw ServerException((response as ServerError<*>).message ?: "Server error")
            else -> throw kotlin.IllegalStateException("Undefined ResponseType.")
        }
    }

    /**
    * Get Fields
    *  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).
    * @param xEmbarcaderoApplicationId  (optional)
    * @param xEmbarcaderoAppSecret  (optional)
    * @param xEmbarcaderoMasterSecret  (optional)
    * @return kotlin.Array<FieldInstallationObject>
    */
    @Suppress("UNCHECKED_CAST")
    fun getInstallationFields(xEmbarcaderoApplicationId: kotlin.String, xEmbarcaderoAppSecret: kotlin.String, xEmbarcaderoMasterSecret: kotlin.String) : kotlin.Array<FieldInstallationObject> {
        val localVariableBody: kotlin.Any? = null
        val localVariableQuery: MultiValueMap = mapOf()
        
        val contentHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf()
        val acceptsHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf("Accept" to "application/json")
        val localVariableHeaders: kotlin.collections.MutableMap<kotlin.String,kotlin.String> = mutableMapOf("X-Embarcadero-Application-Id" to xEmbarcaderoApplicationId, "X-Embarcadero-App-Secret" to xEmbarcaderoAppSecret, "X-Embarcadero-Master-Secret" to xEmbarcaderoMasterSecret)
        localVariableHeaders.putAll(contentHeaders)
        localVariableHeaders.putAll(acceptsHeaders)
        
        val localVariableConfig = RequestConfig(
            RequestMethod.GET,
            "/installations/fields",
            query = localVariableQuery,
            headers = localVariableHeaders
        )
        val response = request<kotlin.Array<FieldInstallationObject>>(
            localVariableConfig,
            localVariableBody
        )

        return when (response.responseType) {
            ResponseType.Success -> (response as Success<*>).data as kotlin.Array<FieldInstallationObject>
            ResponseType.Informational -> TODO()
            ResponseType.Redirection -> TODO()
            ResponseType.ClientError -> throw ClientException((response as ClientError<*>).body as? String ?: "Client error")
            ResponseType.ServerError -> throw ServerException((response as ServerError<*>).message ?: "Server error")
            else -> throw kotlin.IllegalStateException("Undefined ResponseType.")
        }
    }

    /**
    * Get Installations
    *  |      Used to retrieve all data from &#x60;Installation&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
    * @param xEmbarcaderoApplicationId  (optional)
    * @param xEmbarcaderoAppSecret  (optional)
    * @param xEmbarcaderoMasterSecret  (optional)
    * @param skip users skipped (optional)
    * @param limit maximum number of results to return (optional)
    * @param order order ascending or descending (asc, desc) (optional)
    * @param where filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
    * @return kotlin.Array<InstallationObject>
    */
    @Suppress("UNCHECKED_CAST")
    fun getInstallations(xEmbarcaderoApplicationId: kotlin.String, xEmbarcaderoAppSecret: kotlin.String, xEmbarcaderoMasterSecret: kotlin.String, skip: java.math.BigDecimal, limit: java.math.BigDecimal, order: java.math.BigDecimal, where: kotlin.String) : kotlin.Array<InstallationObject> {
        val localVariableBody: kotlin.Any? = null
        val localVariableQuery: MultiValueMap = mapOf("skip" to listOf("$skip"), "limit" to listOf("$limit"), "order" to listOf("$order"), "where" to listOf("$where"))
        
        val contentHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf()
        val acceptsHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf("Accept" to "application/json")
        val localVariableHeaders: kotlin.collections.MutableMap<kotlin.String,kotlin.String> = mutableMapOf("X-Embarcadero-Application-Id" to xEmbarcaderoApplicationId, "X-Embarcadero-App-Secret" to xEmbarcaderoAppSecret, "X-Embarcadero-Master-Secret" to xEmbarcaderoMasterSecret)
        localVariableHeaders.putAll(contentHeaders)
        localVariableHeaders.putAll(acceptsHeaders)
        
        val localVariableConfig = RequestConfig(
            RequestMethod.GET,
            "/installations",
            query = localVariableQuery,
            headers = localVariableHeaders
        )
        val response = request<kotlin.Array<InstallationObject>>(
            localVariableConfig,
            localVariableBody
        )

        return when (response.responseType) {
            ResponseType.Success -> (response as Success<*>).data as kotlin.Array<InstallationObject>
            ResponseType.Informational -> TODO()
            ResponseType.Redirection -> TODO()
            ResponseType.ClientError -> throw ClientException((response as ClientError<*>).body as? String ?: "Client error")
            ResponseType.ServerError -> throw ServerException((response as ServerError<*>).message ?: "Server error")
            else -> throw kotlin.IllegalStateException("Undefined ResponseType.")
        }
    }

    /**
    * Update Installation
    *  |      Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
    * @param id A Installation ID 
    * @param body Installation fields to update 
    * @param xEmbarcaderoApplicationId  (optional)
    * @param xEmbarcaderoAppSecret  (optional)
    * @param xEmbarcaderoMasterSecret  (optional)
    * @return UpdatedInstallationObject
    */
    @Suppress("UNCHECKED_CAST")
    fun updateInstallation(id: kotlin.String, body: UpdateInstallationObject, xEmbarcaderoApplicationId: kotlin.String, xEmbarcaderoAppSecret: kotlin.String, xEmbarcaderoMasterSecret: kotlin.String) : UpdatedInstallationObject {
        val localVariableBody: kotlin.Any? = body
        val localVariableQuery: MultiValueMap = mapOf()
        
        val contentHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf()
        val acceptsHeaders: kotlin.collections.Map<kotlin.String,kotlin.String> = mapOf("Accept" to "application/json")
        val localVariableHeaders: kotlin.collections.MutableMap<kotlin.String,kotlin.String> = mutableMapOf("X-Embarcadero-Application-Id" to xEmbarcaderoApplicationId, "X-Embarcadero-App-Secret" to xEmbarcaderoAppSecret, "X-Embarcadero-Master-Secret" to xEmbarcaderoMasterSecret)
        localVariableHeaders.putAll(contentHeaders)
        localVariableHeaders.putAll(acceptsHeaders)
        
        val localVariableConfig = RequestConfig(
            RequestMethod.PUT,
            "/installations/{id}".replace("{"+"id"+"}", "$id"),
            query = localVariableQuery,
            headers = localVariableHeaders
        )
        val response = request<UpdatedInstallationObject>(
            localVariableConfig,
            localVariableBody
        )

        return when (response.responseType) {
            ResponseType.Success -> (response as Success<*>).data as UpdatedInstallationObject
            ResponseType.Informational -> TODO()
            ResponseType.Redirection -> TODO()
            ResponseType.ClientError -> throw ClientException((response as ClientError<*>).body as? String ?: "Client error")
            ResponseType.ServerError -> throw ServerException((response as ServerError<*>).message ?: "Server error")
            else -> throw kotlin.IllegalStateException("Undefined ResponseType.")
        }
    }

}
