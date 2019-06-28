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


#include "SWGPushWhereObject_deviceToken.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {

SWGPushWhereObject_deviceToken::SWGPushWhereObject_deviceToken(QString json) {
    init();
    this->fromJson(json);
}

SWGPushWhereObject_deviceToken::SWGPushWhereObject_deviceToken() {
    init();
}

SWGPushWhereObject_deviceToken::~SWGPushWhereObject_deviceToken() {
    this->cleanup();
}

void
SWGPushWhereObject_deviceToken::init() {
    in = new QList<QString*>();
    m_in_isSet = false;
}

void
SWGPushWhereObject_deviceToken::cleanup() {
    if(in != nullptr) { 
        auto arr = in;
        for(auto o: *arr) { 
            delete o;
        }
        delete in;
    }
}

SWGPushWhereObject_deviceToken*
SWGPushWhereObject_deviceToken::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGPushWhereObject_deviceToken::fromJsonObject(QJsonObject pJson) {
    
    ::Swagger::setValue(&in, pJson["$in"], "QList", "QString");
}

QString
SWGPushWhereObject_deviceToken::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
SWGPushWhereObject_deviceToken::asJsonObject() {
    QJsonObject obj;
    if(in->size() > 0){
        toJsonArray((QList<void*>*)in, obj, "$in", "QString");
    }

    return obj;
}

QList<QString*>*
SWGPushWhereObject_deviceToken::getIn() {
    return in;
}
void
SWGPushWhereObject_deviceToken::setIn(QList<QString*>* in) {
    this->in = in;
    this->m_in_isSet = true;
}


bool
SWGPushWhereObject_deviceToken::isSet(){
    bool isObjectUpdated = false;
    do{
        if(in->size() > 0){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

