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
 * SWGGroupAddObject.h
 *
 * 
 */

#ifndef SWGGroupAddObject_H_
#define SWGGroupAddObject_H_

#include <QJsonObject>


#include <QString>

#include "SWGObject.h"

namespace Swagger {

class SWGGroupAddObject: public SWGObject {
public:
    SWGGroupAddObject();
    SWGGroupAddObject(QString json);
    ~SWGGroupAddObject();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    SWGGroupAddObject* fromJson(QString jsonString) override;

    QString* getGroupname();
    void setGroupname(QString* groupname);


    virtual bool isSet() override;

private:
    QString* groupname;
    bool m_groupname_isSet;

};

}

#endif /* SWGGroupAddObject_H_ */
