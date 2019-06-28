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
/* tslint:disable:no-unused-variable member-ordering */

import { Observable } from "rxjs/Observable";
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';
import IHttpClient from "../IHttpClient";
import { inject, injectable } from "inversify";
import { IAPIConfiguration } from "../IAPIConfiguration";
import { Headers } from "../Headers";
import HttpResponse from "../HttpResponse";

import { PushObject } from '../model/pushObject';

import { COLLECTION_FORMATS }  from '../variables';



@injectable()
export class PushService {
    private basePath: string = 'http://localhost:8080';

    constructor(@inject("IApiHttpClient") private httpClient: IHttpClient,
        @inject("IAPIConfiguration") private APIConfiguration: IAPIConfiguration ) {
        if(this.APIConfiguration.basePath)
            this.basePath = this.APIConfiguration.basePath;
    }

    /**
     * Send Push
     * Used to send a push notification message to a registered device
     * @param body Object containing the Push Message data structure
     * @param xEmbarcaderoApplicationId 
     * @param xEmbarcaderoAppSecret 
     * @param xEmbarcaderoMasterSecret 
     
     */
    public send(body: PushObject, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, observe?: 'body', headers?: Headers): Observable<any>;
    public send(body: PushObject, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, observe?: 'response', headers?: Headers): Observable<HttpResponse<any>>;
    public send(body: PushObject, xEmbarcaderoApplicationId?: string, xEmbarcaderoAppSecret?: string, xEmbarcaderoMasterSecret?: string, observe: any = 'body', headers: Headers = {}): Observable<any> {
        if (!body){
            throw new Error('Required parameter body was null or undefined when calling send.');
        }

        if (xEmbarcaderoApplicationId) {
            headers['X-Embarcadero-Application-Id'] = String(xEmbarcaderoApplicationId);
        }

        if (xEmbarcaderoAppSecret) {
            headers['X-Embarcadero-App-Secret'] = String(xEmbarcaderoAppSecret);
        }

        if (xEmbarcaderoMasterSecret) {
            headers['X-Embarcadero-Master-Secret'] = String(xEmbarcaderoMasterSecret);
        }

        headers['Accept'] = 'application/json';
        headers['Content-Type'] = 'application/json';

        const response: Observable<HttpResponse<any>> = this.httpClient.post(`${this.basePath}/push`, body , headers);
        if (observe == 'body') {
               return response.map(httpResponse => <any>(httpResponse.response));
        }
        return response;
    }

}
