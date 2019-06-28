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
import { PushWhereObjectDeviceToken } from './pushWhereObjectDeviceToken';


export interface PushWhereObject { 
    deviceType?: PushWhereObject.DeviceTypeEnum;
    deviceToken?: PushWhereObjectDeviceToken;
}
export namespace PushWhereObject {
    export type DeviceTypeEnum = 'ios' | 'android';
    export const DeviceTypeEnum = {
        Ios: 'ios' as DeviceTypeEnum,
        Android: 'android' as DeviceTypeEnum
    }
}
