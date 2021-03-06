/* 
 * EMS API Documentation
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

/// PushWhereObjectDeviceToken : $in

#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct PushWhereObjectDeviceToken {
  #[serde(rename = "$in")]
  _in: Vec<String>
}

impl PushWhereObjectDeviceToken {
  /// $in
  pub fn new(_in: Vec<String>) -> PushWhereObjectDeviceToken {
    PushWhereObjectDeviceToken {
      _in: _in
    }
  }

  pub fn set__in(&mut self, _in: Vec<String>) {
    self._in = _in;
  }

  pub fn with__in(mut self, _in: Vec<String>) -> PushWhereObjectDeviceToken {
    self._in = _in;
    self
  }

  pub fn _in(&self) -> &Vec<String> {
    &self._in
  }


}



