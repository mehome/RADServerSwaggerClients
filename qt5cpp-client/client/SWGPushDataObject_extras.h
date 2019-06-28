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

/*
 * SWGPushDataObject_extras.h
 *
 * 
 */

#ifndef SWGPushDataObject_extras_H_
#define SWGPushDataObject_extras_H_

#include <QJsonObject>


#include <QString>

#include "SWGObject.h"

namespace Swagger {

class SWGPushDataObject_extras: public SWGObject {
public:
    SWGPushDataObject_extras();
    SWGPushDataObject_extras(QString json);
    ~SWGPushDataObject_extras();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    SWGPushDataObject_extras* fromJson(QString jsonString) override;

    QString* getMessage();
    void setMessage(QString* message);


    virtual bool isSet() override;

private:
    QString* message;
    bool m_message_isSet;

};

}

#endif /* SWGPushDataObject_extras_H_ */