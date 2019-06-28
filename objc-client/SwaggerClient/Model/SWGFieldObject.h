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


#import "SWGFieldObjectFields.h"
@protocol SWGFieldObjectFields;
@class SWGFieldObjectFields;



@protocol SWGFieldObject
@end

@interface SWGFieldObject : SWGObject


@property(nonatomic) NSString* name;

@property(nonatomic) NSArray<SWGFieldObjectFields>* fields;

@property(nonatomic) NSNumber* custom;

@end
