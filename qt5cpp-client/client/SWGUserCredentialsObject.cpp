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


#include "SWGUserCredentialsObject.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {

SWGUserCredentialsObject::SWGUserCredentialsObject(QString json) {
    init();
    this->fromJson(json);
}

SWGUserCredentialsObject::SWGUserCredentialsObject() {
    init();
}

SWGUserCredentialsObject::~SWGUserCredentialsObject() {
    this->cleanup();
}

void
SWGUserCredentialsObject::init() {
    username = new QString("");
    m_username_isSet = false;
    password = new QString("");
    m_password_isSet = false;
}

void
SWGUserCredentialsObject::cleanup() {
    if(username != nullptr) { 
        delete username;
    }
    if(password != nullptr) { 
        delete password;
    }
}

SWGUserCredentialsObject*
SWGUserCredentialsObject::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGUserCredentialsObject::fromJsonObject(QJsonObject pJson) {
    ::Swagger::setValue(&username, pJson["username"], "QString", "QString");
    
    ::Swagger::setValue(&password, pJson["password"], "QString", "QString");
    
}

QString
SWGUserCredentialsObject::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
SWGUserCredentialsObject::asJsonObject() {
    QJsonObject obj;
    if(username != nullptr && *username != QString("")){
        toJsonValue(QString("username"), username, obj, QString("QString"));
    }
    if(password != nullptr && *password != QString("")){
        toJsonValue(QString("password"), password, obj, QString("QString"));
    }

    return obj;
}

QString*
SWGUserCredentialsObject::getUsername() {
    return username;
}
void
SWGUserCredentialsObject::setUsername(QString* username) {
    this->username = username;
    this->m_username_isSet = true;
}

QString*
SWGUserCredentialsObject::getPassword() {
    return password;
}
void
SWGUserCredentialsObject::setPassword(QString* password) {
    this->password = password;
    this->m_password_isSet = true;
}


bool
SWGUserCredentialsObject::isSet(){
    bool isObjectUpdated = false;
    do{
        if(username != nullptr && *username != QString("")){ isObjectUpdated = true; break;}
        if(password != nullptr && *password != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

