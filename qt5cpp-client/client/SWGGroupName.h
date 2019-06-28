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
 * SWGGroupName.h
 *
 * 
 */

#ifndef SWGGroupName_H_
#define SWGGroupName_H_

#include <QJsonObject>



#include "SWGObject.h"

namespace Swagger {

class SWGGroupName: public SWGObject {
public:
    SWGGroupName();
    SWGGroupName(QString json);
    ~SWGGroupName();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    SWGGroupName* fromJson(QString jsonString) override;


    virtual bool isSet() override;

private:
};

}

#endif /* SWGGroupName_H_ */
