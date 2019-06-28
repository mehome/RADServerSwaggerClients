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
pub struct UserObject {
  #[serde(rename = "id")]
  id: String,
  #[serde(rename = "username")]
  username: String,
  #[serde(rename = "_meta")]
  _meta: ::models::MetaObject
}

impl UserObject {
  pub fn new(id: String, username: String, _meta: ::models::MetaObject) -> UserObject {
    UserObject {
      id: id,
      username: username,
      _meta: _meta
    }
  }

  pub fn set_id(&mut self, id: String) {
    self.id = id;
  }

  pub fn with_id(mut self, id: String) -> UserObject {
    self.id = id;
    self
  }

  pub fn id(&self) -> &String {
    &self.id
  }


  pub fn set_username(&mut self, username: String) {
    self.username = username;
  }

  pub fn with_username(mut self, username: String) -> UserObject {
    self.username = username;
    self
  }

  pub fn username(&self) -> &String {
    &self.username
  }


  pub fn set__meta(&mut self, _meta: ::models::MetaObject) {
    self._meta = _meta;
  }

  pub fn with__meta(mut self, _meta: ::models::MetaObject) -> UserObject {
    self._meta = _meta;
    self
  }

  pub fn _meta(&self) -> &::models::MetaObject {
    &self._meta
  }


}



