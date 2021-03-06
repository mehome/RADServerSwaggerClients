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

export interface ChannelName {
}

export interface EdgeModuleAddObject extends null<String, string> {
  modulename: string;
  protocol: string;
  protocolprops: string;
}

export interface EdgeModuleAddedObject {
  id: string;
  modulename: string;
}

export interface EdgeModuleObject extends null<String, string> {
  modulename: string;
  id: string;
  protocol: string;
  protocolprops: string;
  meta: MetaEdgeModuleObject;
}

export interface EdgeModuleResourceAddObject extends null<String, string> {
  resourcename: string;
}

export interface EdgeModuleResourceAddedObject {
  resourcename: string;
}

export interface EdgeModuleResourceObject extends null<String, string> {
  resourcename: string;
  modulename: string;
  moduleid: string;
  meta: MetaEdgeModuleObject;
}

export interface EdgeModuleResourceUpdateObject extends null<String, string> {
  resourcename?: string;
}

export interface EdgeModuleResourceUpdatedObject {
  updated: string;
}

export interface EdgeModuleUpdateObject extends null<String, string> {
  modulename: string;
  protocol: string;
  protocolprops: string;
}

export interface EdgeModuleUpdatedObject {
  updated: string;
}

export interface FieldGroupObject {
  name: string;
  fields?: Array<FieldObjectFields>;
  custom?: boolean;
}

export interface FieldInstallationObject {
  name: string;
  fields?: Array<FieldObjectFields>;
  custom?: boolean;
}

export interface FieldObject {
  name: string;
  fields?: Array<FieldObjectFields>;
  custom?: boolean;
}

export interface FieldObjectFields {
  name?: string;
}

export interface FieldsEdgeModuleObject {
  name: string;
  fields?: Array<FieldObjectFields>;
  custom?: boolean;
}

export interface GroupAddObject {
  groupname: string;
}

export interface GroupName {
}

export interface GroupObject extends null<String, string> {
  name: string;
  meta: MetaGroupObject;
  users?: Array<string>;
}

export interface InstallationAddObject extends null<String, string> {
  deviceToken: string;
  deviceType: string;
  channels?: Array<string>;
}

export interface InstallationAddedObject {
  id: string;
}

export interface InstallationObject extends null<String, string> {
  id: string;
  deviceToken: string;
  deviceType: InstallationObjectDeviceTypeEnum;
  meta: MetaInstallationObject;
  channels?: Array<string>;
}

/**
 * Enum for the deviceType property.
 */
export type InstallationObjectDeviceTypeEnum = 'ios' | 'android';

export interface MetaEdgeModuleObject {
  creator: string;
  created: string;
  updated?: string;
}

export interface MetaGroupObject {
  creator: string;
  created: string;
  updated?: string;
}

export interface MetaInstallationObject {
  creator: string;
  created: string;
  updated?: string;
}

export interface MetaObject {
  creator: string;
  created: string;
  updated?: string;
}

export interface PushDataObject {
  gcm?: PushDataObjectGcm;
  aps?: PushDataObjectAps;
  extras?: PushDataObjectExtras;
}

export interface PushDataObjectAps {
  alert?: string;
  badge?: string;
  sound?: string;
}

export interface PushDataObjectExtras {
  message?: string;
}

export interface PushDataObjectGcm {
  message?: string;
  title?: string;
}

export interface PushObject {
  data: PushDataObject;
  channels?: Array<string>;
  where: PushWhereObject;
}

export interface PushWhereObject {
  deviceType?: PushWhereObjectDeviceTypeEnum;
  deviceToken?: PushWhereObjectDeviceToken;
}

/**
 * Enum for the deviceType property.
 */
export type PushWhereObjectDeviceTypeEnum = 'ios' | 'android';

/**
 * $in
 */
export interface PushWhereObjectDeviceToken {
  _in: Array<string>;
}

export interface UpdateGroupObject {
  fieldName?: string;
  users?: Array<string>;
}

export interface UpdateInstallationObject extends null<String, string> {
  channels?: Array<string>;
}

export interface UpdateObject {
  fieldName?: string;
}

export interface UpdatedGroupObject {
  updated: string;
}

export interface UpdatedInstallationObject {
  updated: string;
}

export interface UpdatedObject {
  updated: string;
}

export interface UserCredentialsObject {
  username: string;
  password: string;
}

export interface UserObject extends null<String, string> {
  id: string;
  username: string;
  meta: MetaObject;
}

export interface UserSignUpResponseObject {
  id: string;
  sessionToken: string;
}

export interface UserTokenObject {
  id: string;
  username: string;
  meta: MetaObject;
  sessiontoken: string;
}

export interface UseridObject {
  id: string;
}

export interface VersionObject {
  version?: string;
  server?: string;
}

