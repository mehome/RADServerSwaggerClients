//
// InstallationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class InstallationsAPI: APIBase {
    /**
     Add Installation
     
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addInstallation(body body: InstallationAddObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((data: InstallationAddedObject?, error: ErrorType?) -> Void)) {
        addInstallationWithRequestBuilder(body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Add Installation
     - POST /installations
     -  |      Used to add a new `Installation` object to the EMS database.
     - examples: [{contentType=application/json, example={
  "_id" : "_id"
}}]
     
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<InstallationAddedObject> 
     */
    public class func addInstallationWithRequestBuilder(body body: InstallationAddObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<InstallationAddedObject> {
        let path = "/installations"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<InstallationAddedObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**
     Delete Installation
     
     - parameter id: (path) A Installation ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteInstallation(id id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        deleteInstallationWithRequestBuilder(id: id, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete Installation
     - DELETE /installations/{id}
     -  |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     
     - parameter id: (path) A Installation ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func deleteInstallationWithRequestBuilder(id id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<Void> {
        var path = "/installations/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**
     Get Installation Channels
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getChannels(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((data: [ChannelName]?, error: ErrorType?) -> Void)) {
        getChannelsWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Installation Channels
     - GET /installations/channels
     -  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     - examples: [{contentType=application/json, example=[ { }, { } ]}]
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<[ChannelName]> 
     */
    public class func getChannelsWithRequestBuilder(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<[ChannelName]> {
        let path = "/installations/channels"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<[ChannelName]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**
     Get Installation
     
     - parameter id: (path) A Installation ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInstallation(id id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((data: InstallationObject?, error: ErrorType?) -> Void)) {
        getInstallationWithRequestBuilder(id: id, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Installation
     - GET /installations/{id}
     -  |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     - examples: [{contentType=application/json, example={
  "deviceType" : "ios",
  "channels" : [ "channels", "channels" ],
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "_id" : "_id",
  "deviceToken" : "deviceToken"
}}]
     
     - parameter id: (path) A Installation ID 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<InstallationObject> 
     */
    public class func getInstallationWithRequestBuilder(id id: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<InstallationObject> {
        var path = "/installations/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<InstallationObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**
     Get Fields
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInstallationFields(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((data: [FieldInstallationObject]?, error: ErrorType?) -> Void)) {
        getInstallationFieldsWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Fields
     - GET /installations/fields
     -  |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).
     - examples: [{contentType=application/json, example=[ {
  "custom" : true,
  "name" : "name",
  "fields" : [ {
    "name" : "name"
  }, {
    "name" : "name"
  } ]
}, {
  "custom" : true,
  "name" : "name",
  "fields" : [ {
    "name" : "name"
  }, {
    "name" : "name"
  } ]
} ]}]
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<[FieldInstallationObject]> 
     */
    public class func getInstallationFieldsWithRequestBuilder(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<[FieldInstallationObject]> {
        let path = "/installations/fields"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<[FieldInstallationObject]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**
     Get Installations
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter skip: (query) users skipped (optional)
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter order: (query) order ascending or descending (asc, desc) (optional)
     - parameter _where: (query) filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInstallations(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, skip: Double? = nil, limit: Double? = nil, order: Double? = nil, _where: String? = nil, completion: ((data: [InstallationObject]?, error: ErrorType?) -> Void)) {
        getInstallationsWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret, skip: skip, limit: limit, order: order, _where: _where).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Installations
     - GET /installations
     -  |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     - examples: [{contentType=application/json, example=[ {
  "deviceType" : "ios",
  "channels" : [ "channels", "channels" ],
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "_id" : "_id",
  "deviceToken" : "deviceToken"
}, {
  "deviceType" : "ios",
  "channels" : [ "channels", "channels" ],
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "_id" : "_id",
  "deviceToken" : "deviceToken"
} ]}]
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter skip: (query) users skipped (optional)
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter order: (query) order ascending or descending (asc, desc) (optional)
     - parameter _where: (query) filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)

     - returns: RequestBuilder<[InstallationObject]> 
     */
    public class func getInstallationsWithRequestBuilder(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, skip: Double? = nil, limit: Double? = nil, order: Double? = nil, _where: String? = nil) -> RequestBuilder<[InstallationObject]> {
        let path = "/installations"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "skip": skip,
            "limit": limit,
            "order": order,
            "where": _where
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<[InstallationObject]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false, headers: headerParameters)
    }

    /**
     Update Installation
     
     - parameter id: (path) A Installation ID 
     - parameter body: (body) Installation fields to update 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateInstallation(id id: String, body: UpdateInstallationObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((data: UpdatedInstallationObject?, error: ErrorType?) -> Void)) {
        updateInstallationWithRequestBuilder(id: id, body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Update Installation
     - PUT /installations/{id}
     -  |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     - examples: [{contentType=application/json, example={
  "updated" : "updated"
}}]
     
     - parameter id: (path) A Installation ID 
     - parameter body: (body) Installation fields to update 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<UpdatedInstallationObject> 
     */
    public class func updateInstallationWithRequestBuilder(id id: String, body: UpdateInstallationObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<UpdatedInstallationObject> {
        var path = "/installations/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<UpdatedInstallationObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

}
