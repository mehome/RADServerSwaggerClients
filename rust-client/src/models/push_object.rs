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
pub struct PushObject {
  #[serde(rename = "data")]
  data: ::models::PushDataObject,
  #[serde(rename = "channels")]
  channels: Option<Vec<String>>,
  #[serde(rename = "where")]
  _where: ::models::PushWhereObject
}

impl PushObject {
  pub fn new(data: ::models::PushDataObject, _where: ::models::PushWhereObject) -> PushObject {
    PushObject {
      data: data,
      channels: None,
      _where: _where
    }
  }

  pub fn set_data(&mut self, data: ::models::PushDataObject) {
    self.data = data;
  }

  pub fn with_data(mut self, data: ::models::PushDataObject) -> PushObject {
    self.data = data;
    self
  }

  pub fn data(&self) -> &::models::PushDataObject {
    &self.data
  }


  pub fn set_channels(&mut self, channels: Vec<String>) {
    self.channels = Some(channels);
  }

  pub fn with_channels(mut self, channels: Vec<String>) -> PushObject {
    self.channels = Some(channels);
    self
  }

  pub fn channels(&self) -> Option<&Vec<String>> {
    self.channels.as_ref()
  }

  pub fn reset_channels(&mut self) {
    self.channels = None;
  }

  pub fn set__where(&mut self, _where: ::models::PushWhereObject) {
    self._where = _where;
  }

  pub fn with__where(mut self, _where: ::models::PushWhereObject) -> PushObject {
    self._where = _where;
    self
  }

  pub fn _where(&self) -> &::models::PushWhereObject {
    &self._where
  }


}


