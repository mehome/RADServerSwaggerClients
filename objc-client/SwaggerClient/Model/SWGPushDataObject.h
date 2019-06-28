#import <Foundation/Foundation.h>
#import "SWGObject.h"

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


#import "SWGPushDataObjectAps.h"
#import "SWGPushDataObjectExtras.h"
#import "SWGPushDataObjectGcm.h"
@protocol SWGPushDataObjectAps;
@class SWGPushDataObjectAps;
@protocol SWGPushDataObjectExtras;
@class SWGPushDataObjectExtras;
@protocol SWGPushDataObjectGcm;
@class SWGPushDataObjectGcm;



@protocol SWGPushDataObject
@end

@interface SWGPushDataObject : SWGObject


@property(nonatomic) SWGPushDataObjectGcm* gcm;

@property(nonatomic) SWGPushDataObjectAps* aps;

@property(nonatomic) SWGPushDataObjectExtras* extras;

@end
