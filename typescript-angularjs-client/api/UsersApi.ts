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

import * as models from '../model/models';

/* tslint:disable:no-unused-variable member-ordering */

export class UsersApi {
    protected basePath = 'http://localhost:8080';
    public defaultHeaders : any = {};

    static $inject: string[] = ['$http', '$httpParamSerializer', 'basePath'];

    constructor(protected $http: ng.IHttpService, protected $httpParamSerializer?: (d: any) => any, basePath?: string) {
        if (basePath !== undefined) {
            this.basePath = basePath;
        }
    }

    /**
     *  |      Used to add a new `User` object to the EMS database.
     * @summary Add User
     * @param body Object to add a new EMS User in the EMS Server
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public addUser (body: models.UserCredentialsObject, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.UseridObject> {
        const localVarPath = this.basePath + '/users';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'body' is not null or undefined
        if (body === null || body === undefined) {
            throw new Error('Required parameter body was null or undefined when calling addUser.');
        }

        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
            url: localVarPath,
            data: body,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     *  |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
     * @summary Delete User
     * @param id A user ID
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public deleteUser (id: string, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/users/{id}'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new Error('Required parameter id was null or undefined when calling deleteUser.');
        }

        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'DELETE',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     *  |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
     * @summary Get User
     * @param id A user ID
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public getUser (id: string, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.UserObject> {
        const localVarPath = this.basePath + '/users/{id}'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new Error('Required parameter id was null or undefined when calling getUser.');
        }

        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'GET',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     *  |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).
     * @summary Get Fields
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public getUserFields (xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<Array<models.FieldObject>> {
        const localVarPath = this.basePath + '/users/fields';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'GET',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     *  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
     * @summary Get User Groups
     * @param id A user ID
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public getUserGroups (id: string, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<Array<models.GroupName>> {
        const localVarPath = this.basePath + '/users/{id}/groups'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new Error('Required parameter id was null or undefined when calling getUserGroups.');
        }

        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'GET',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     *  |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     * @summary Get Users
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     * @param skip users skipped
     * @param limit maximum number of results to return
     * @param order order ascending or descending (asc, desc)
     * @param where filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
     */
    public getUsers (xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, skip?: number, limit?: number, order?: number, where?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<Array<models.UserObject>> {
        const localVarPath = this.basePath + '/users';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        if (skip !== undefined) {
            queryParameters['skip'] = skip;
        }

        if (limit !== undefined) {
            queryParameters['limit'] = limit;
        }

        if (order !== undefined) {
            queryParameters['order'] = order;
        }

        if (where !== undefined) {
            queryParameters['where'] = where;
        }

        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'GET',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     *  |      Logs in to the EMS Server with a specific EMS User.
     * @summary Log In
     * @param body A user object
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public loginUser (body: models.UserCredentialsObject, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.UserTokenObject> {
        const localVarPath = this.basePath + '/users/login';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'body' is not null or undefined
        if (body === null || body === undefined) {
            throw new Error('Required parameter body was null or undefined when calling loginUser.');
        }

        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
            url: localVarPath,
            data: body,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     * sPostLogoutSummaryDesc
     * @summary sPostLogoutSummaryTitle
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public logoutUser (xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/users/logout';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     *  |      Signs up to the EMS Server with an appropriate EMS User.
     * @summary Sign Up  User
     * @param body Object to sign up a new EMS User in the EMS Server
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public signupUser (body: models.UserCredentialsObject, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.UserSignUpResponseObject> {
        const localVarPath = this.basePath + '/users/signup';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'body' is not null or undefined
        if (body === null || body === undefined) {
            throw new Error('Required parameter body was null or undefined when calling signupUser.');
        }

        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
            url: localVarPath,
            data: body,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     *  |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
     * @summary Update User
     * @param id A user ID
     * @param body Add any fieldName
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     */
    public updateUser (id: string, body: models.UpdateObject, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.UpdatedObject> {
        const localVarPath = this.basePath + '/users/{id}'
            .replace('{' + 'id' + '}', encodeURIComponent(String(id)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new Error('Required parameter id was null or undefined when calling updateUser.');
        }

        // verify required parameter 'body' is not null or undefined
        if (body === null || body === undefined) {
            throw new Error('Required parameter body was null or undefined when calling updateUser.');
        }

        headerParams['X-Embarcadero-Application-Id'] = xEmbarcaderoApplicationId;

        headerParams['X-Embarcadero-App-Secret'] = xEmbarcaderoAppSecret;

        headerParams['X-Embarcadero-Master-Secret'] = xEmbarcaderoMasterSecret;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'PUT',
            url: localVarPath,
            data: body,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
}
