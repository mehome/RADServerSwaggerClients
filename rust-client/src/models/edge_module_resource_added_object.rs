/* 
 * EMS API Documentation
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct EdgeModuleResourceAddedObject {
  #[serde(rename = "resourcename")]
  resourcename: String
}

impl EdgeModuleResourceAddedObject {
  pub fn new(resourcename: String) -> EdgeModuleResourceAddedObject {
    EdgeModuleResourceAddedObject {
      resourcename: resourcename
    }
  }

  pub fn set_resourcename(&mut self, resourcename: String) {
    self.resourcename = resourcename;
  }

  pub fn with_resourcename(mut self, resourcename: String) -> EdgeModuleResourceAddedObject {
    self.resourcename = resourcename;
    self
  }

  pub fn resourcename(&self) -> &String {
    &self.resourcename
  }


}



