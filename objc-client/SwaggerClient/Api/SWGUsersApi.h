#import <Foundation/Foundation.h>
#import "SWGFieldObject.h"
#import "SWGGroupName.h"
#import "SWGUpdateObject.h"
#import "SWGUpdatedObject.h"
#import "SWGUserCredentialsObject.h"
#import "SWGUserObject.h"
#import "SWGUserSignUpResponseObject.h"
#import "SWGUserTokenObject.h"
#import "SWGUseridObject.h"
#import "SWGApi.h"

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



@interface SWGUsersApi: NSObject <SWGApi>

extern NSString* kSWGUsersApiErrorDomain;
extern NSInteger kSWGUsersApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Add User
///  |      Used to add a new `User` object to the EMS database.
///
/// @param body Object to add a new EMS User in the EMS Server
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// 
///  code:201 message:"User Created",
///  code:409 message:"User already exists"
///
/// @return SWGUseridObject*
-(NSURLSessionTask*) addUserWithBody: (SWGUserCredentialsObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUseridObject* output, NSError* error)) handler;


/// Delete User
///  |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
///
/// @param _id A user ID
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// 
///  code:204 message:"No Content",
///  code:404 message:"The request does not identify a known application, resource, endpoint, or entity"
///
/// @return void
-(NSURLSessionTask*) deleteUserWithId: (NSString*) _id
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler;


/// Get User
///  |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
///
/// @param _id A user ID
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// 
///  code:200 message:"OK"
///
/// @return SWGUserObject*
-(NSURLSessionTask*) getUserWithId: (NSString*) _id
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUserObject* output, NSError* error)) handler;


/// Get Fields
///  |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).
///
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// 
///  code:200 message:"OK"
///
/// @return NSArray<SWGFieldObject>*
-(NSURLSessionTask*) getUserFieldsWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGFieldObject>* output, NSError* error)) handler;


/// Get User Groups
///  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
///
/// @param _id A user ID
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// 
///  code:200 message:"OK"
///
/// @return NSArray<SWGGroupName>*
-(NSURLSessionTask*) getUserGroupsWithId: (NSString*) _id
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSArray<SWGGroupName>* output, NSError* error)) handler;


/// Get Users
///  |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
///
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// @param skip users skipped (optional)
/// @param limit maximum number of results to return (optional)
/// @param order order ascending or descending (asc, desc) (optional)
/// @param where filter operators (lt, lte, gt, gte, eq, neq, like, nlike) (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request"
///
/// @return NSArray<SWGUserObject>*
-(NSURLSessionTask*) getUsersWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    skip: (NSNumber*) skip
    limit: (NSNumber*) limit
    order: (NSNumber*) order
    where: (NSString*) where
    completionHandler: (void (^)(NSArray<SWGUserObject>* output, NSError* error)) handler;


/// Log In
///  |      Logs in to the EMS Server with a specific EMS User.
///
/// @param body A user object
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// 
///  code:200 message:"OK",
///  code:401 message:"The credentials of the request are not authorized for the requested operation.",
///  code:404 message:"User not found"
///
/// @return SWGUserTokenObject*
-(NSURLSessionTask*) loginUserWithBody: (SWGUserCredentialsObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUserTokenObject* output, NSError* error)) handler;


/// sPostLogoutSummaryTitle
/// sPostLogoutSummaryDesc
///
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// 
///  code:200 message:"OK",
///  code:404 message:"User not found"
///
/// @return void
-(NSURLSessionTask*) logoutUserWithXEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(NSError* error)) handler;


/// Sign Up  User
///  |      Signs up to the EMS Server with an appropriate EMS User.
///
/// @param body Object to sign up a new EMS User in the EMS Server
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// 
///  code:200 message:"OK",
///  code:409 message:"User already exists"
///
/// @return SWGUserSignUpResponseObject*
-(NSURLSessionTask*) signupUserWithBody: (SWGUserCredentialsObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUserSignUpResponseObject* output, NSError* error)) handler;


/// Update User
///  |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
///
/// @param _id A user ID
/// @param body Add any fieldName
/// @param xEmbarcaderoApplicationId  (optional)
/// @param xEmbarcaderoAppSecret  (optional)
/// @param xEmbarcaderoMasterSecret  (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Operation could not be completed because one or more dynamic names conflicts with a static name."
///
/// @return SWGUpdatedObject*
-(NSURLSessionTask*) updateUserWithId: (NSString*) _id
    body: (SWGUpdateObject*) body
    xEmbarcaderoApplicationId: (NSString*) xEmbarcaderoApplicationId
    xEmbarcaderoAppSecret: (NSString*) xEmbarcaderoAppSecret
    xEmbarcaderoMasterSecret: (NSString*) xEmbarcaderoMasterSecret
    completionHandler: (void (^)(SWGUpdatedObject* output, NSError* error)) handler;



@end