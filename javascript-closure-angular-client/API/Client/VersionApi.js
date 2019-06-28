/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.VersionApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 * Version: 0.0.0
 * Generated by: io.swagger.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.VersionApi');

goog.require('API.Client.versionObject');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.VersionApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('VersionApiBasePath') ?
                   /** @type {!string} */ ($injector.get('VersionApiBasePath')) :
                   'http://localhost:8080';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('VersionApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('VersionApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.VersionApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Get version
 *  |      Used to retrieve the &#x60;Version&#x60; of the EMS Server.
 * @param {!string=} opt_xEmbarcaderoApplicationId 
 * @param {!string=} opt_xEmbarcaderoAppSecret 
 * @param {!string=} opt_xEmbarcaderoMasterSecret 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.versionObject>}
 */
API.Client.VersionApi.prototype.getVersion = function(opt_xEmbarcaderoApplicationId, opt_xEmbarcaderoAppSecret, opt_xEmbarcaderoMasterSecret, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/version';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  headerParams['X-Embarcadero-Application-Id'] = opt_xEmbarcaderoApplicationId;

  headerParams['X-Embarcadero-App-Secret'] = opt_xEmbarcaderoAppSecret;

  headerParams['X-Embarcadero-Master-Secret'] = opt_xEmbarcaderoMasterSecret;

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
