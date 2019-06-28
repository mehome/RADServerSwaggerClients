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
 * SWG_metaObject.h
 *
 * 
 */

#ifndef SWG_metaObject_H_
#define SWG_metaObject_H_

#include <QJsonObject>


#include <QString>

#include "SWGObject.h"

namespace Swagger {

class SWG_metaObject: public SWGObject {
public:
    SWG_metaObject();
    SWG_metaObject(QString json);
    ~SWG_metaObject();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    SWG_metaObject* fromJson(QString jsonString) override;

    QString* getCreator();
    void setCreator(QString* creator);

    QString* getCreated();
    void setCreated(QString* created);

    QString* getUpdated();
    void setUpdated(QString* updated);


    virtual bool isSet() override;

private:
    QString* creator;
    bool m_creator_isSet;

    QString* created;
    bool m_created_isSet;

    QString* updated;
    bool m_updated_isSet;

};

}

#endif /* SWG_metaObject_H_ */
