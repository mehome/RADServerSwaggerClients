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


#include "SWGFieldGroupObject.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {

SWGFieldGroupObject::SWGFieldGroupObject(QString json) {
    init();
    this->fromJson(json);
}

SWGFieldGroupObject::SWGFieldGroupObject() {
    init();
}

SWGFieldGroupObject::~SWGFieldGroupObject() {
    this->cleanup();
}

void
SWGFieldGroupObject::init() {
    name = new QString("");
    m_name_isSet = false;
    fields = new QList<SWGFieldObject_fields*>();
    m_fields_isSet = false;
    custom = false;
    m_custom_isSet = false;
}

void
SWGFieldGroupObject::cleanup() {
    if(name != nullptr) { 
        delete name;
    }
    if(fields != nullptr) { 
        auto arr = fields;
        for(auto o: *arr) { 
            delete o;
        }
        delete fields;
    }

}

SWGFieldGroupObject*
SWGFieldGroupObject::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGFieldGroupObject::fromJsonObject(QJsonObject pJson) {
    ::Swagger::setValue(&name, pJson["name"], "QString", "QString");
    
    
    ::Swagger::setValue(&fields, pJson["fields"], "QList", "SWGFieldObject_fields");
    ::Swagger::setValue(&custom, pJson["custom"], "bool", "");
    
}

QString
SWGFieldGroupObject::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
SWGFieldGroupObject::asJsonObject() {
    QJsonObject obj;
    if(name != nullptr && *name != QString("")){
        toJsonValue(QString("name"), name, obj, QString("QString"));
    }
    if(fields->size() > 0){
        toJsonArray((QList<void*>*)fields, obj, "fields", "SWGFieldObject_fields");
    }
    if(m_custom_isSet){
        obj.insert("custom", QJsonValue(custom));
    }

    return obj;
}

QString*
SWGFieldGroupObject::getName() {
    return name;
}
void
SWGFieldGroupObject::setName(QString* name) {
    this->name = name;
    this->m_name_isSet = true;
}

QList<SWGFieldObject_fields*>*
SWGFieldGroupObject::getFields() {
    return fields;
}
void
SWGFieldGroupObject::setFields(QList<SWGFieldObject_fields*>* fields) {
    this->fields = fields;
    this->m_fields_isSet = true;
}

bool
SWGFieldGroupObject::isCustom() {
    return custom;
}
void
SWGFieldGroupObject::setCustom(bool custom) {
    this->custom = custom;
    this->m_custom_isSet = true;
}


bool
SWGFieldGroupObject::isSet(){
    bool isObjectUpdated = false;
    do{
        if(name != nullptr && *name != QString("")){ isObjectUpdated = true; break;}
        if(fields->size() > 0){ isObjectUpdated = true; break;}
        if(m_custom_isSet){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

