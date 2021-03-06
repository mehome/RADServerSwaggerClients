# swagger
Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.0.0
- Build date: 2019-06-27T17:08:09.582Z
- Build package: io.swagger.codegen.languages.DartJaguarClientCodegen

## Requirements

Dart 2 or later OR Flutter 0.7.0 or later.

Once your code is generated, you need to run the build_runner command to let Jaguar implement your API:

```sh
flutter packages pub run build_runner build
or
pub run build_runner build
```

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com//.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:swagger/api.dart';


final swaggerGen = SwaggerGen();
var api_instance = swaggerGen.getApiDocApi();
var xEmbarcaderoApplicationId = xEmbarcaderoApplicationId_example; // String | 
var xEmbarcaderoAppSecret = xEmbarcaderoAppSecret_example; // String | 
var xEmbarcaderoMasterSecret = xEmbarcaderoMasterSecret_example; // String | 

try {
    api_instance.aPI(xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
} catch (e) {
    print("Exception when calling ApiDocApi->aPI: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ApiDocApi* | [**aPI**](docs//ApiDocApi.md#api) | **Get** /api | Get API EndPoints
*ApiDocApi* | [**getAPIJSONFormat**](docs//ApiDocApi.md#getapijsonformat) | **Get** /api/apidoc.json | Get JSON
*ApiDocApi* | [**getAPIYAMLFormat**](docs//ApiDocApi.md#getapiyamlformat) | **Get** /api/apidoc.yaml | Get YAML
*ApiDocApi* | [**getAPIYAMLFormat EndPoint**](docs//ApiDocApi.md#getapiyamlformat endpoint) | **Get** /api/:item/apidoc.yaml | Get API EndPoint
*EdgeModulesApi* | [**getModule**](docs//EdgeModulesApi.md#getmodule) | **Get** /edgemodules/:mname | Get Module
*EdgeModulesApi* | [**getModuleResource**](docs//EdgeModulesApi.md#getmoduleresource) | **Get** /edgemodules/:mname/resources/:name | Get EdgeModule Resource
*EdgeModulesApi* | [**getModuleResources**](docs//EdgeModulesApi.md#getmoduleresources) | **Get** /edgemodules/:mname/resources | Get EdgeModule Resources
*EdgeModulesApi* | [**getModules**](docs//EdgeModulesApi.md#getmodules) | **Get** /edgemodules | Get Module
*EdgeModulesApi* | [**getModulesFields**](docs//EdgeModulesApi.md#getmodulesfields) | **Get** /edgemodules/fields | Get Fields
*EdgeModulesApi* | [**getResources**](docs//EdgeModulesApi.md#getresources) | **Get** /edgemodules/resources | Get EdgeModules Resources
*EdgeModulesApi* | [**getResourcesFields**](docs//EdgeModulesApi.md#getresourcesfields) | **Get** /edgemodules/resources/fields | Get Resource Fields
*EdgeModulesApi* | [**registerModule**](docs//EdgeModulesApi.md#registermodule) | **Post** /edgemodules | Add Module
*EdgeModulesApi* | [**registerModuleResource**](docs//EdgeModulesApi.md#registermoduleresource) | **Post** /edgemodules/:mname/resources | Add Module Resource
*EdgeModulesApi* | [**unregisterModule**](docs//EdgeModulesApi.md#unregistermodule) | **Delete** /edgemodules/:mname | Delete Module
*EdgeModulesApi* | [**unregisterModuleResource**](docs//EdgeModulesApi.md#unregistermoduleresource) | **Delete** /edgemodules/:mname/resources/:name | Delete Module Resource
*EdgeModulesApi* | [**updateModule**](docs//EdgeModulesApi.md#updatemodule) | **Put** /edgemodules/:mname | Update Module
*EdgeModulesApi* | [**updateModuleResource**](docs//EdgeModulesApi.md#updatemoduleresource) | **Put** /edgemodules/:mname/resources/:name | Update Module Resource
*EdgeModulesInvokersApi* | [**deleteResourceEndpoint**](docs//EdgeModulesInvokersApi.md#deleteresourceendpoint) | **Delete** /edgemodules/:mname/:rname | Invoke Resource Delete Method
*EdgeModulesInvokersApi* | [**deleteResourceEndpointItem**](docs//EdgeModulesInvokersApi.md#deleteresourceendpointitem) | **Delete** /edgemodules/:mname/:rname/:wildcard | Invoke Resource/_* Delete Method
*EdgeModulesInvokersApi* | [**getResourceEndpoint**](docs//EdgeModulesInvokersApi.md#getresourceendpoint) | **Get** /edgemodules/:mname/:rname | Invoke Resource Get Method
*EdgeModulesInvokersApi* | [**getResourceEndpointItem**](docs//EdgeModulesInvokersApi.md#getresourceendpointitem) | **Get** /edgemodules/:mname/:rname/:wildcard | Invoke Resource/_* Get Method
*EdgeModulesInvokersApi* | [**patchResourceEndpoint**](docs//EdgeModulesInvokersApi.md#patchresourceendpoint) | **Patch** /edgemodules/:mname/:rname | Invoke Resource Patch Method
*EdgeModulesInvokersApi* | [**patchResourceEndpointItem**](docs//EdgeModulesInvokersApi.md#patchresourceendpointitem) | **Patch** /edgemodules/:mname/:rname/:wildcard | Invoke Resource/_* Patch Method
*EdgeModulesInvokersApi* | [**postResourceEndpoint**](docs//EdgeModulesInvokersApi.md#postresourceendpoint) | **Post** /edgemodules/:mname/:rname | Invoke Resource Post Method
*EdgeModulesInvokersApi* | [**postResourceEndpointItem**](docs//EdgeModulesInvokersApi.md#postresourceendpointitem) | **Post** /edgemodules/:mname/:rname/:wildcard | Invoke Resource/_* Post Method
*EdgeModulesInvokersApi* | [**putResourceEndpoint**](docs//EdgeModulesInvokersApi.md#putresourceendpoint) | **Put** /edgemodules/:mname/:rname | Invoke Resource Put Method
*EdgeModulesInvokersApi* | [**putResourceEndpointItem**](docs//EdgeModulesInvokersApi.md#putresourceendpointitem) | **Put** /edgemodules/:mname/:rname/:wildcard | Invoke Resource/_* Put Method
*GroupsApi* | [**addGroup**](docs//GroupsApi.md#addgroup) | **Post** /groups | Add Group
*GroupsApi* | [**deleteGroup**](docs//GroupsApi.md#deletegroup) | **Delete** /groups/:item | Delete Group
*GroupsApi* | [**getGroup**](docs//GroupsApi.md#getgroup) | **Get** /groups/:item | Get Group
*GroupsApi* | [**getGroupFields**](docs//GroupsApi.md#getgroupfields) | **Get** /groups/fields | Get Fields
*GroupsApi* | [**getGroups**](docs//GroupsApi.md#getgroups) | **Get** /groups | Get Groups
*GroupsApi* | [**updateGroup**](docs//GroupsApi.md#updategroup) | **Put** /groups/:item | Update Group
*InstallationsApi* | [**addInstallation**](docs//InstallationsApi.md#addinstallation) | **Post** /installations | Add Installation
*InstallationsApi* | [**deleteInstallation**](docs//InstallationsApi.md#deleteinstallation) | **Delete** /installations/:id | Delete Installation
*InstallationsApi* | [**getChannels**](docs//InstallationsApi.md#getchannels) | **Get** /installations/channels | Get Installation Channels
*InstallationsApi* | [**getInstallation**](docs//InstallationsApi.md#getinstallation) | **Get** /installations/:id | Get Installation
*InstallationsApi* | [**getInstallationFields**](docs//InstallationsApi.md#getinstallationfields) | **Get** /installations/fields | Get Fields
*InstallationsApi* | [**getInstallations**](docs//InstallationsApi.md#getinstallations) | **Get** /installations | Get Installations
*InstallationsApi* | [**updateInstallation**](docs//InstallationsApi.md#updateinstallation) | **Put** /installations/:id | Update Installation
*PushApi* | [**send**](docs//PushApi.md#send) | **Post** /push | Send Push
*UsersApi* | [**addUser**](docs//UsersApi.md#adduser) | **Post** /users | Add User
*UsersApi* | [**deleteUser**](docs//UsersApi.md#deleteuser) | **Delete** /users/:id | Delete User
*UsersApi* | [**getUser**](docs//UsersApi.md#getuser) | **Get** /users/:id | Get User
*UsersApi* | [**getUserFields**](docs//UsersApi.md#getuserfields) | **Get** /users/fields | Get Fields
*UsersApi* | [**getUserGroups**](docs//UsersApi.md#getusergroups) | **Get** /users/:id/groups | Get User Groups
*UsersApi* | [**getUsers**](docs//UsersApi.md#getusers) | **Get** /users | Get Users
*UsersApi* | [**loginUser**](docs//UsersApi.md#loginuser) | **Post** /users/login | Log In
*UsersApi* | [**logoutUser**](docs//UsersApi.md#logoutuser) | **Post** /users/logout | sPostLogoutSummaryTitle
*UsersApi* | [**signupUser**](docs//UsersApi.md#signupuser) | **Post** /users/signup | Sign Up  User
*UsersApi* | [**updateUser**](docs//UsersApi.md#updateuser) | **Put** /users/:id | Update User
*VersionApi* | [**getVersion**](docs//VersionApi.md#getversion) | **Get** /version | Get version


## Documentation For Models

 - [ChannelName](docs//ChannelName.md)
 - [EdgeModuleAddObject](docs//EdgeModuleAddObject.md)
 - [EdgeModuleAddedObject](docs//EdgeModuleAddedObject.md)
 - [EdgeModuleObject](docs//EdgeModuleObject.md)
 - [EdgeModuleResourceAddObject](docs//EdgeModuleResourceAddObject.md)
 - [EdgeModuleResourceAddedObject](docs//EdgeModuleResourceAddedObject.md)
 - [EdgeModuleResourceObject](docs//EdgeModuleResourceObject.md)
 - [EdgeModuleResourceUpdateObject](docs//EdgeModuleResourceUpdateObject.md)
 - [EdgeModuleResourceUpdatedObject](docs//EdgeModuleResourceUpdatedObject.md)
 - [EdgeModuleUpdateObject](docs//EdgeModuleUpdateObject.md)
 - [EdgeModuleUpdatedObject](docs//EdgeModuleUpdatedObject.md)
 - [FieldGroupObject](docs//FieldGroupObject.md)
 - [FieldInstallationObject](docs//FieldInstallationObject.md)
 - [FieldObject](docs//FieldObject.md)
 - [FieldObjectFields](docs//FieldObjectFields.md)
 - [FieldsEdgeModuleObject](docs//FieldsEdgeModuleObject.md)
 - [GroupAddObject](docs//GroupAddObject.md)
 - [GroupName](docs//GroupName.md)
 - [GroupObject](docs//GroupObject.md)
 - [InstallationAddObject](docs//InstallationAddObject.md)
 - [InstallationAddedObject](docs//InstallationAddedObject.md)
 - [InstallationObject](docs//InstallationObject.md)
 - [MetaEdgeModuleObject](docs//MetaEdgeModuleObject.md)
 - [MetaGroupObject](docs//MetaGroupObject.md)
 - [MetaInstallationObject](docs//MetaInstallationObject.md)
 - [MetaObject](docs//MetaObject.md)
 - [PushDataObject](docs//PushDataObject.md)
 - [PushDataObjectAps](docs//PushDataObjectAps.md)
 - [PushDataObjectExtras](docs//PushDataObjectExtras.md)
 - [PushDataObjectGcm](docs//PushDataObjectGcm.md)
 - [PushObject](docs//PushObject.md)
 - [PushWhereObject](docs//PushWhereObject.md)
 - [PushWhereObjectDeviceToken](docs//PushWhereObjectDeviceToken.md)
 - [UpdateGroupObject](docs//UpdateGroupObject.md)
 - [UpdateInstallationObject](docs//UpdateInstallationObject.md)
 - [UpdateObject](docs//UpdateObject.md)
 - [UpdatedGroupObject](docs//UpdatedGroupObject.md)
 - [UpdatedInstallationObject](docs//UpdatedInstallationObject.md)
 - [UpdatedObject](docs//UpdatedObject.md)
 - [UserCredentialsObject](docs//UserCredentialsObject.md)
 - [UserObject](docs//UserObject.md)
 - [UserSignUpResponseObject](docs//UserSignUpResponseObject.md)
 - [UserTokenObject](docs//UserTokenObject.md)
 - [UseridObject](docs//UseridObject.md)
 - [VersionObject](docs//VersionObject.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author




