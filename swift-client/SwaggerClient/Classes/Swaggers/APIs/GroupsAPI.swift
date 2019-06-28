//
// GroupsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class GroupsAPI: APIBase {
    /**
     Add Group
     
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addGroup(body body: GroupAddObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        addGroupWithRequestBuilder(body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add Group
     - POST /groups
     -  |      Used to add a new `Group` object to the EMS database.
     
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func addGroupWithRequestBuilder(body body: GroupAddObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<Void> {
        let path = "/groups"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**
     Delete Group
     
     - parameter item: (path) A group name 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteGroup(item item: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        deleteGroupWithRequestBuilder(item: item, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete Group
     - DELETE /groups/{item}
     -  |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.
     
     - parameter item: (path) A group name 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func deleteGroupWithRequestBuilder(item item: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<Void> {
        var path = "/groups/{item}"
        path = path.stringByReplacingOccurrencesOfString("{item}", withString: "\(item)", options: .LiteralSearch, range: nil)
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
     Get Group
     
     - parameter item: (path) A group name 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getGroup(item item: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((data: GroupObject?, error: ErrorType?) -> Void)) {
        getGroupWithRequestBuilder(item: item, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Group
     - GET /groups/{item}
     -  |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.
     - examples: [{contentType=application/json, example={
  "name" : "name",
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "users" : [ "users", "users" ]
}}]
     
     - parameter item: (path) A group name 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<GroupObject> 
     */
    public class func getGroupWithRequestBuilder(item item: String, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<GroupObject> {
        var path = "/groups/{item}"
        path = path.stringByReplacingOccurrencesOfString("{item}", withString: "\(item)", options: .LiteralSearch, range: nil)
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
 
        let requestBuilder: RequestBuilder<GroupObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**
     Get Fields
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getGroupFields(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((data: [FieldGroupObject]?, error: ErrorType?) -> Void)) {
        getGroupFieldsWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Fields
     - GET /groups/fields
     -  |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).
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

     - returns: RequestBuilder<[FieldGroupObject]> 
     */
    public class func getGroupFieldsWithRequestBuilder(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<[FieldGroupObject]> {
        let path = "/groups/fields"
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
 
        let requestBuilder: RequestBuilder<[FieldGroupObject]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

    /**
     Get Groups
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter skip: (query) users skipped (optional)
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter order: (query) order ascending or descending (asc, desc) (optional)
     - parameter _where: (query) filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getGroups(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, skip: Double? = nil, limit: Double? = nil, order: Double? = nil, _where: String? = nil, completion: ((data: [GroupObject]?, error: ErrorType?) -> Void)) {
        getGroupsWithRequestBuilder(xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret, skip: skip, limit: limit, order: order, _where: _where).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get Groups
     - GET /groups
     -  |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     - examples: [{contentType=application/json, example=[ {
  "name" : "name",
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "users" : [ "users", "users" ]
}, {
  "name" : "name",
  "_meta" : {
    "creator" : "creator",
    "created" : "created",
    "updated" : "updated"
  },
  "users" : [ "users", "users" ]
} ]}]
     
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter skip: (query) users skipped (optional)
     - parameter limit: (query) maximum number of results to return (optional)
     - parameter order: (query) order ascending or descending (asc, desc) (optional)
     - parameter _where: (query) filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)

     - returns: RequestBuilder<[GroupObject]> 
     */
    public class func getGroupsWithRequestBuilder(xEmbarcaderoApplicationId xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, skip: Double? = nil, limit: Double? = nil, order: Double? = nil, _where: String? = nil) -> RequestBuilder<[GroupObject]> {
        let path = "/groups"
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
 
        let requestBuilder: RequestBuilder<[GroupObject]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false, headers: headerParameters)
    }

    /**
     Update Group
     
     - parameter item: (path) A group name 
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateGroup(item item: String, body: UpdateGroupObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil, completion: ((data: UpdatedGroupObject?, error: ErrorType?) -> Void)) {
        updateGroupWithRequestBuilder(item: item, body: body, xEmbarcaderoApplicationId: xEmbarcaderoApplicationId, xEmbarcaderoAppSecret: xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret: xEmbarcaderoMasterSecret).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Update Group
     - PUT /groups/{item}
     -  |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.
     - examples: [{contentType=application/json, example={
  "updated" : "updated"
}}]
     
     - parameter item: (path) A group name 
     - parameter body: (body) Object to sign up a new EMS User in the EMS Server 
     - parameter xEmbarcaderoApplicationId: (header)  (optional)
     - parameter xEmbarcaderoAppSecret: (header)  (optional)
     - parameter xEmbarcaderoMasterSecret: (header)  (optional)

     - returns: RequestBuilder<UpdatedGroupObject> 
     */
    public class func updateGroupWithRequestBuilder(item item: String, body: UpdateGroupObject, xEmbarcaderoApplicationId: String? = nil, xEmbarcaderoAppSecret: String? = nil, xEmbarcaderoMasterSecret: String? = nil) -> RequestBuilder<UpdatedGroupObject> {
        var path = "/groups/{item}"
        path = path.stringByReplacingOccurrencesOfString("{item}", withString: "\(item)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
        let nillableHeaders: [String: AnyObject?] = [
            "X-Embarcadero-Application-Id": xEmbarcaderoApplicationId,
            "X-Embarcadero-App-Secret": xEmbarcaderoAppSecret,
            "X-Embarcadero-Master-Secret": xEmbarcaderoMasterSecret
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)
 
        let requestBuilder: RequestBuilder<UpdatedGroupObject>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true, headers: headerParameters)
    }

}