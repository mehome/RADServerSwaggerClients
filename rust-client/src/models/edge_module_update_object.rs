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
pub struct EdgeModuleUpdateObject {
  #[serde(rename = "modulename")]
  modulename: String,
  #[serde(rename = "protocol")]
  protocol: String,
  #[serde(rename = "protocolprops")]
  protocolprops: String
}

impl EdgeModuleUpdateObject {
  pub fn new(modulename: String, protocol: String, protocolprops: String) -> EdgeModuleUpdateObject {
    EdgeModuleUpdateObject {
      modulename: modulename,
      protocol: protocol,
      protocolprops: protocolprops
    }
  }

  pub fn set_modulename(&mut self, modulename: String) {
    self.modulename = modulename;
  }

  pub fn with_modulename(mut self, modulename: String) -> EdgeModuleUpdateObject {
    self.modulename = modulename;
    self
  }

  pub fn modulename(&self) -> &String {
    &self.modulename
  }


  pub fn set_protocol(&mut self, protocol: String) {
    self.protocol = protocol;
  }

  pub fn with_protocol(mut self, protocol: String) -> EdgeModuleUpdateObject {
    self.protocol = protocol;
    self
  }

  pub fn protocol(&self) -> &String {
    &self.protocol
  }


  pub fn set_protocolprops(&mut self, protocolprops: String) {
    self.protocolprops = protocolprops;
  }

  pub fn with_protocolprops(mut self, protocolprops: String) -> EdgeModuleUpdateObject {
    self.protocolprops = protocolprops;
    self
  }

  pub fn protocolprops(&self) -> &String {
    &self.protocolprops
  }


}



