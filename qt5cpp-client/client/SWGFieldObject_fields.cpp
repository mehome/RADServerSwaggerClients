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


#include "SWGFieldObject_fields.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {

SWGFieldObject_fields::SWGFieldObject_fields(QString json) {
    init();
    this->fromJson(json);
}

SWGFieldObject_fields::SWGFieldObject_fields() {
    init();
}

SWGFieldObject_fields::~SWGFieldObject_fields() {
    this->cleanup();
}

void
SWGFieldObject_fields::init() {
    name = new QString("");
    m_name_isSet = false;
}

void
SWGFieldObject_fields::cleanup() {
    if(name != nullptr) { 
        delete name;
    }
}

SWGFieldObject_fields*
SWGFieldObject_fields::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGFieldObject_fields::fromJsonObject(QJsonObject pJson) {
    ::Swagger::setValue(&name, pJson["name"], "QString", "QString");
    
}

QString
SWGFieldObject_fields::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
SWGFieldObject_fields::asJsonObject() {
    QJsonObject obj;
    if(name != nullptr && *name != QString("")){
        toJsonValue(QString("name"), name, obj, QString("QString"));
    }

    return obj;
}

QString*
SWGFieldObject_fields::getName() {
    return name;
}
void
SWGFieldObject_fields::setName(QString* name) {
    this->name = name;
    this->m_name_isSet = true;
}


bool
SWGFieldObject_fields::isSet(){
    bool isObjectUpdated = false;
    do{
        if(name != nullptr && *name != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

