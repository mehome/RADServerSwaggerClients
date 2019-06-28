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

import { autoinject } from 'aurelia-framework';
import { HttpClient } from 'aurelia-http-client';
import { Api } from './Api';
import { AuthStorage } from './AuthStorage';
import {
} from './models';

/**
 * deleteResourceEndpoint - parameters interface
 */
export interface IDeleteResourceEndpointParams {
  mname: string;
  rname: string;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * deleteResourceEndpointItem - parameters interface
 */
export interface IDeleteResourceEndpointItemParams {
  mname: string;
  rname: string;
  wildcard: string;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * getResourceEndpoint - parameters interface
 */
export interface IGetResourceEndpointParams {
  mname: string;
  rname: string;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * getResourceEndpointItem - parameters interface
 */
export interface IGetResourceEndpointItemParams {
  mname: string;
  rname: string;
  wildcard: string;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * patchResourceEndpoint - parameters interface
 */
export interface IPatchResourceEndpointParams {
  mname: string;
  rname: string;
  body: any;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * patchResourceEndpointItem - parameters interface
 */
export interface IPatchResourceEndpointItemParams {
  mname: string;
  rname: string;
  wildcard: string;
  body: any;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * postResourceEndpoint - parameters interface
 */
export interface IPostResourceEndpointParams {
  mname: string;
  rname: string;
  body: any;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * postResourceEndpointItem - parameters interface
 */
export interface IPostResourceEndpointItemParams {
  mname: string;
  rname: string;
  wildcard: string;
  body: any;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * putResourceEndpoint - parameters interface
 */
export interface IPutResourceEndpointParams {
  mname: string;
  rname: string;
  body: any;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * putResourceEndpointItem - parameters interface
 */
export interface IPutResourceEndpointItemParams {
  mname: string;
  rname: string;
  wildcard: string;
  body: any;
  xEmbarcaderoApplicationId?: string;
  xEmbarcaderoAppSecret?: string;
  xEmbarcaderoMasterSecret?: string;
}

/**
 * EdgeModulesInvokersApi - API class
 */
@autoinject()
export class EdgeModulesInvokersApi extends Api {

  /**
   * Creates a new EdgeModulesInvokersApi class.
   *
   * @param httpClient The Aurelia HTTP client to be injected.
   * @param authStorage A storage for authentication data.
   */
  constructor(httpClient: HttpClient, authStorage: AuthStorage) {
    super(httpClient, authStorage);
  }

  /**
   * Invoke Resource Delete Method
   * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async deleteResourceEndpoint(params: IDeleteResourceEndpointParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('deleteResourceEndpoint', params, 'mname');
    this.ensureParamIsSet('deleteResourceEndpoint', params, 'rname');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asDelete()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Invoke Resource/_* Delete Method
   * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.wildcard Is the Wild card part of the URL
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async deleteResourceEndpointItem(params: IDeleteResourceEndpointItemParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('deleteResourceEndpointItem', params, 'mname');
    this.ensureParamIsSet('deleteResourceEndpointItem', params, 'rname');
    this.ensureParamIsSet('deleteResourceEndpointItem', params, 'wildcard');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}/{wildcard}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`))
      .replace(`{${'wildcard'}}`, encodeURIComponent(`${params['wildcard']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asDelete()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Invoke Resource Get Method
   * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async getResourceEndpoint(params: IGetResourceEndpointParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('getResourceEndpoint', params, 'mname');
    this.ensureParamIsSet('getResourceEndpoint', params, 'rname');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Invoke Resource/_* Get Method
   * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.wildcard Is the Wild card part of the URL
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async getResourceEndpointItem(params: IGetResourceEndpointItemParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('getResourceEndpointItem', params, 'mname');
    this.ensureParamIsSet('getResourceEndpointItem', params, 'rname');
    this.ensureParamIsSet('getResourceEndpointItem', params, 'wildcard');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}/{wildcard}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`))
      .replace(`{${'wildcard'}}`, encodeURIComponent(`${params['wildcard']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Invoke Resource Patch Method
   * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.body Body Object
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async patchResourceEndpoint(params: IPatchResourceEndpointParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('patchResourceEndpoint', params, 'mname');
    this.ensureParamIsSet('patchResourceEndpoint', params, 'rname');
    this.ensureParamIsSet('patchResourceEndpoint', params, 'body');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPatch()
      // Encode body parameter
      .withHeader('content-type', 'application/json')
      .withContent(JSON.stringify(params['body'] || {}))
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Invoke Resource/_* Patch Method
   * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.wildcard Is the Wild card part of the URL
   * @param params.body Body Object
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async patchResourceEndpointItem(params: IPatchResourceEndpointItemParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('patchResourceEndpointItem', params, 'mname');
    this.ensureParamIsSet('patchResourceEndpointItem', params, 'rname');
    this.ensureParamIsSet('patchResourceEndpointItem', params, 'wildcard');
    this.ensureParamIsSet('patchResourceEndpointItem', params, 'body');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}/{wildcard}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`))
      .replace(`{${'wildcard'}}`, encodeURIComponent(`${params['wildcard']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPatch()
      // Encode body parameter
      .withHeader('content-type', 'application/json')
      .withContent(JSON.stringify(params['body'] || {}))
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Invoke Resource Post Method
   * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.body Body Object
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async postResourceEndpoint(params: IPostResourceEndpointParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('postResourceEndpoint', params, 'mname');
    this.ensureParamIsSet('postResourceEndpoint', params, 'rname');
    this.ensureParamIsSet('postResourceEndpoint', params, 'body');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPost()
      // Encode body parameter
      .withHeader('content-type', 'application/json')
      .withContent(JSON.stringify(params['body'] || {}))
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Invoke Resource/_* Post Method
   * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.wildcard Is the Wild card part of the URL
   * @param params.body Body Object
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async postResourceEndpointItem(params: IPostResourceEndpointItemParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('postResourceEndpointItem', params, 'mname');
    this.ensureParamIsSet('postResourceEndpointItem', params, 'rname');
    this.ensureParamIsSet('postResourceEndpointItem', params, 'wildcard');
    this.ensureParamIsSet('postResourceEndpointItem', params, 'body');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}/{wildcard}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`))
      .replace(`{${'wildcard'}}`, encodeURIComponent(`${params['wildcard']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPost()
      // Encode body parameter
      .withHeader('content-type', 'application/json')
      .withContent(JSON.stringify(params['body'] || {}))
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Invoke Resource Put Method
   * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.body Body Object
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async putResourceEndpoint(params: IPutResourceEndpointParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('putResourceEndpoint', params, 'mname');
    this.ensureParamIsSet('putResourceEndpoint', params, 'rname');
    this.ensureParamIsSet('putResourceEndpoint', params, 'body');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPut()
      // Encode body parameter
      .withHeader('content-type', 'application/json')
      .withContent(JSON.stringify(params['body'] || {}))
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Invoke Resource/_* Put Method
   * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
   * @param params.mname Is the EMS EdgeModule name
   * @param params.rname Is the unique EMS EdgeModule Resource name
   * @param params.wildcard Is the Wild card part of the URL
   * @param params.body Body Object
   * @param params.xEmbarcaderoApplicationId 
   * @param params.xEmbarcaderoAppSecret 
   * @param params.xEmbarcaderoMasterSecret 
   */
  async putResourceEndpointItem(params: IPutResourceEndpointItemParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('putResourceEndpointItem', params, 'mname');
    this.ensureParamIsSet('putResourceEndpointItem', params, 'rname');
    this.ensureParamIsSet('putResourceEndpointItem', params, 'wildcard');
    this.ensureParamIsSet('putResourceEndpointItem', params, 'body');

    // Create URL to call
    const url = `${this.basePath}/edgemodules/{mname}/{rname}/{wildcard}`
      .replace(`{${'mname'}}`, encodeURIComponent(`${params['mname']}`))
      .replace(`{${'rname'}}`, encodeURIComponent(`${params['rname']}`))
      .replace(`{${'wildcard'}}`, encodeURIComponent(`${params['wildcard']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPut()
      // Encode body parameter
      .withHeader('content-type', 'application/json')
      .withContent(JSON.stringify(params['body'] || {}))
      .withHeader('X-Embarcadero-Application-Id', params['xEmbarcaderoApplicationId'])      .withHeader('X-Embarcadero-App-Secret', params['xEmbarcaderoAppSecret'])      .withHeader('X-Embarcadero-Master-Secret', params['xEmbarcaderoMasterSecret'])
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

}

