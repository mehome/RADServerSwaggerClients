/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.PushApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 * Version: 0.0.0
 * Generated by: io.swagger.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.PushApi');

goog.require('API.Client.PushObject');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.PushApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('PushApiBasePath') ?
                   /** @type {!string} */ ($injector.get('PushApiBasePath')) :
                   'http://localhost:8080';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('PushApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('PushApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.PushApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Send Push
 * Used to send a push notification message to a registered device
 * @param {!PushObject} body Object containing the Push Message data structure
 * @param {!string=} opt_xEmbarcaderoApplicationId 
 * @param {!string=} opt_xEmbarcaderoAppSecret 
 * @param {!string=} opt_xEmbarcaderoMasterSecret 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.PushApi.prototype.send = function(body, opt_xEmbarcaderoApplicationId, opt_xEmbarcaderoAppSecret, opt_xEmbarcaderoMasterSecret, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/push';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'body' is set
  if (!body) {
    throw new Error('Missing required parameter body when calling send');
  }
  headerParams['X-Embarcadero-Application-Id'] = opt_xEmbarcaderoApplicationId;

  headerParams['X-Embarcadero-App-Secret'] = opt_xEmbarcaderoAppSecret;

  headerParams['X-Embarcadero-Master-Secret'] = opt_xEmbarcaderoMasterSecret;

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: true,
    data: body,
        params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
