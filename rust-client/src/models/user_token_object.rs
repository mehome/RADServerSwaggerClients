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
pub struct UserTokenObject {
  #[serde(rename = "id")]
  id: String,
  #[serde(rename = "username")]
  username: String,
  #[serde(rename = "_meta")]
  _meta: ::models::MetaObject,
  #[serde(rename = "sessiontoken")]
  sessiontoken: String
}

impl UserTokenObject {
  pub fn new(id: String, username: String, _meta: ::models::MetaObject, sessiontoken: String) -> UserTokenObject {
    UserTokenObject {
      id: id,
      username: username,
      _meta: _meta,
      sessiontoken: sessiontoken
    }
  }

  pub fn set_id(&mut self, id: String) {
    self.id = id;
  }

  pub fn with_id(mut self, id: String) -> UserTokenObject {
    self.id = id;
    self
  }

  pub fn id(&self) -> &String {
    &self.id
  }


  pub fn set_username(&mut self, username: String) {
    self.username = username;
  }

  pub fn with_username(mut self, username: String) -> UserTokenObject {
    self.username = username;
    self
  }

  pub fn username(&self) -> &String {
    &self.username
  }


  pub fn set__meta(&mut self, _meta: ::models::MetaObject) {
    self._meta = _meta;
  }

  pub fn with__meta(mut self, _meta: ::models::MetaObject) -> UserTokenObject {
    self._meta = _meta;
    self
  }

  pub fn _meta(&self) -> &::models::MetaObject {
    &self._meta
  }


  pub fn set_sessiontoken(&mut self, sessiontoken: String) {
    self.sessiontoken = sessiontoken;
  }

  pub fn with_sessiontoken(mut self, sessiontoken: String) -> UserTokenObject {
    self.sessiontoken = sessiontoken;
    self
  }

  pub fn sessiontoken(&self) -> &String {
    &self.sessiontoken
  }


}



