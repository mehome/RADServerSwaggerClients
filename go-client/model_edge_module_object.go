/*
 * EMS API Documentation
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * API version: 0.0.0
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type EdgeModuleObject struct {
	Modulename string `json:"modulename"`
	Id string `json:"_id"`
	Protocol string `json:"protocol"`
	Protocolprops string `json:"protocolprops"`
	Meta *MetaEdgeModuleObject `json:"_meta"`
}