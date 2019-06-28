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

#include "SWGGroupsApi.h"
#include "SWGHelpers.h"
#include "SWGModelFactory.h"
#include "SWGQObjectWrapper.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace Swagger {

SWGGroupsApi::SWGGroupsApi() {}

SWGGroupsApi::~SWGGroupsApi() {}

SWGGroupsApi::SWGGroupsApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
SWGGroupsApi::addGroup(SWGGroupAddObject& body, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/groups");



    SWGHttpRequestWorker *worker = new SWGHttpRequestWorker();
    SWGHttpRequestInput input(fullPath, "POST");


    
    QString output = body.asJson();
    input.request_body.append(output);
    

    if (x_embarcadero_application_id != nullptr) {
        input.headers.insert("X-Embarcadero-Application-Id", "x_embarcadero_application_id");
    }
    if (x_embarcadero_app_secret != nullptr) {
        input.headers.insert("X-Embarcadero-App-Secret", "x_embarcadero_app_secret");
    }
    if (x_embarcadero_master_secret != nullptr) {
        input.headers.insert("X-Embarcadero-Master-Secret", "x_embarcadero_master_secret");
    }

    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &SWGHttpRequestWorker::on_execution_finished,
            this,
            &SWGGroupsApi::addGroupCallback);

    worker->execute(&input);
}

void
SWGGroupsApi::addGroupCallback(SWGHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit addGroupSignal();
    } else {
        emit addGroupSignalE(error_type, error_str);
        emit addGroupSignalEFull(worker, error_type, error_str);
    }
}

void
SWGGroupsApi::deleteGroup(QString* item, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/groups/{item}");

    QString itemPathParam("{"); itemPathParam.append("item").append("}");
    fullPath.replace(itemPathParam, stringValue(item));


    SWGHttpRequestWorker *worker = new SWGHttpRequestWorker();
    SWGHttpRequestInput input(fullPath, "DELETE");




    if (x_embarcadero_application_id != nullptr) {
        input.headers.insert("X-Embarcadero-Application-Id", "x_embarcadero_application_id");
    }
    if (x_embarcadero_app_secret != nullptr) {
        input.headers.insert("X-Embarcadero-App-Secret", "x_embarcadero_app_secret");
    }
    if (x_embarcadero_master_secret != nullptr) {
        input.headers.insert("X-Embarcadero-Master-Secret", "x_embarcadero_master_secret");
    }

    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &SWGHttpRequestWorker::on_execution_finished,
            this,
            &SWGGroupsApi::deleteGroupCallback);

    worker->execute(&input);
}

void
SWGGroupsApi::deleteGroupCallback(SWGHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit deleteGroupSignal();
    } else {
        emit deleteGroupSignalE(error_type, error_str);
        emit deleteGroupSignalEFull(worker, error_type, error_str);
    }
}

void
SWGGroupsApi::getGroup(QString* item, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/groups/{item}");

    QString itemPathParam("{"); itemPathParam.append("item").append("}");
    fullPath.replace(itemPathParam, stringValue(item));


    SWGHttpRequestWorker *worker = new SWGHttpRequestWorker();
    SWGHttpRequestInput input(fullPath, "GET");




    if (x_embarcadero_application_id != nullptr) {
        input.headers.insert("X-Embarcadero-Application-Id", "x_embarcadero_application_id");
    }
    if (x_embarcadero_app_secret != nullptr) {
        input.headers.insert("X-Embarcadero-App-Secret", "x_embarcadero_app_secret");
    }
    if (x_embarcadero_master_secret != nullptr) {
        input.headers.insert("X-Embarcadero-Master-Secret", "x_embarcadero_master_secret");
    }

    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &SWGHttpRequestWorker::on_execution_finished,
            this,
            &SWGGroupsApi::getGroupCallback);

    worker->execute(&input);
}

void
SWGGroupsApi::getGroupCallback(SWGHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    QString json(worker->response);
    SWGGroupObject* output = static_cast<SWGGroupObject*>(create(json, QString("SWGGroupObject")));
    auto wrapper = new SWGQObjectWrapper<SWGGroupObject*> (output);
    wrapper->deleteLater();
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getGroupSignal(output);
    } else {
        emit getGroupSignalE(output, error_type, error_str);
        emit getGroupSignalEFull(worker, error_type, error_str);
    }
}

void
SWGGroupsApi::getGroupFields(QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/groups/fields");



    SWGHttpRequestWorker *worker = new SWGHttpRequestWorker();
    SWGHttpRequestInput input(fullPath, "GET");




    if (x_embarcadero_application_id != nullptr) {
        input.headers.insert("X-Embarcadero-Application-Id", "x_embarcadero_application_id");
    }
    if (x_embarcadero_app_secret != nullptr) {
        input.headers.insert("X-Embarcadero-App-Secret", "x_embarcadero_app_secret");
    }
    if (x_embarcadero_master_secret != nullptr) {
        input.headers.insert("X-Embarcadero-Master-Secret", "x_embarcadero_master_secret");
    }

    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &SWGHttpRequestWorker::on_execution_finished,
            this,
            &SWGGroupsApi::getGroupFieldsCallback);

    worker->execute(&input);
}

void
SWGGroupsApi::getGroupFieldsCallback(SWGHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    QList<SWGFieldGroupObject*>* output = new QList<SWGFieldGroupObject*>();
    QString json(worker->response);
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonArray jsonArray = doc.array();
    auto wrapper = new SWGQObjectWrapper<QList<SWGFieldGroupObject*>*> (output);
    wrapper->deleteLater();
    foreach(QJsonValue obj, jsonArray) {
        SWGFieldGroupObject* o = new SWGFieldGroupObject();
        QJsonObject jv = obj.toObject();
        QJsonObject * ptr = (QJsonObject*)&jv;
        o->fromJsonObject(*ptr);
        auto objwrapper = new SWGQObjectWrapper<SWGFieldGroupObject*> (o);
        objwrapper->deleteLater();
        output->append(o);
    }
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getGroupFieldsSignal(output);
    } else {
        emit getGroupFieldsSignalE(output, error_type, error_str);
        emit getGroupFieldsSignalEFull(worker, error_type, error_str);
    }
}

void
SWGGroupsApi::getGroups(QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret, SWGNumber* skip, SWGNumber* limit, SWGNumber* order, QString* where) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/groups");


    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("skip"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(skip)));

    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("limit"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(limit)));

    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("order"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(order)));

    if (fullPath.indexOf("?") > 0)
      fullPath.append("&");
    else
      fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("where"))
        .append("=")
        .append(QUrl::toPercentEncoding(stringValue(where)));


    SWGHttpRequestWorker *worker = new SWGHttpRequestWorker();
    SWGHttpRequestInput input(fullPath, "GET");




    if (x_embarcadero_application_id != nullptr) {
        input.headers.insert("X-Embarcadero-Application-Id", "x_embarcadero_application_id");
    }
    if (x_embarcadero_app_secret != nullptr) {
        input.headers.insert("X-Embarcadero-App-Secret", "x_embarcadero_app_secret");
    }
    if (x_embarcadero_master_secret != nullptr) {
        input.headers.insert("X-Embarcadero-Master-Secret", "x_embarcadero_master_secret");
    }

    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &SWGHttpRequestWorker::on_execution_finished,
            this,
            &SWGGroupsApi::getGroupsCallback);

    worker->execute(&input);
}

void
SWGGroupsApi::getGroupsCallback(SWGHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    QList<SWGGroupObject*>* output = new QList<SWGGroupObject*>();
    QString json(worker->response);
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonArray jsonArray = doc.array();
    auto wrapper = new SWGQObjectWrapper<QList<SWGGroupObject*>*> (output);
    wrapper->deleteLater();
    foreach(QJsonValue obj, jsonArray) {
        SWGGroupObject* o = new SWGGroupObject();
        QJsonObject jv = obj.toObject();
        QJsonObject * ptr = (QJsonObject*)&jv;
        o->fromJsonObject(*ptr);
        auto objwrapper = new SWGQObjectWrapper<SWGGroupObject*> (o);
        objwrapper->deleteLater();
        output->append(o);
    }
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit getGroupsSignal(output);
    } else {
        emit getGroupsSignalE(output, error_type, error_str);
        emit getGroupsSignalEFull(worker, error_type, error_str);
    }
}

void
SWGGroupsApi::updateGroup(QString* item, SWGUpdateGroupObject& body, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/groups/{item}");

    QString itemPathParam("{"); itemPathParam.append("item").append("}");
    fullPath.replace(itemPathParam, stringValue(item));


    SWGHttpRequestWorker *worker = new SWGHttpRequestWorker();
    SWGHttpRequestInput input(fullPath, "PUT");


    
    QString output = body.asJson();
    input.request_body.append(output);
    

    if (x_embarcadero_application_id != nullptr) {
        input.headers.insert("X-Embarcadero-Application-Id", "x_embarcadero_application_id");
    }
    if (x_embarcadero_app_secret != nullptr) {
        input.headers.insert("X-Embarcadero-App-Secret", "x_embarcadero_app_secret");
    }
    if (x_embarcadero_master_secret != nullptr) {
        input.headers.insert("X-Embarcadero-Master-Secret", "x_embarcadero_master_secret");
    }

    foreach(QString key, this->defaultHeaders.keys()) {
        input.headers.insert(key, this->defaultHeaders.value(key));
    }

    connect(worker,
            &SWGHttpRequestWorker::on_execution_finished,
            this,
            &SWGGroupsApi::updateGroupCallback);

    worker->execute(&input);
}

void
SWGGroupsApi::updateGroupCallback(SWGHttpRequestWorker * worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    }
    else {
        msg = "Error: " + worker->error_str;
    }

    QString json(worker->response);
    SWGUpdatedGroupObject* output = static_cast<SWGUpdatedGroupObject*>(create(json, QString("SWGUpdatedGroupObject")));
    auto wrapper = new SWGQObjectWrapper<SWGUpdatedGroupObject*> (output);
    wrapper->deleteLater();
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit updateGroupSignal(output);
    } else {
        emit updateGroupSignalE(output, error_type, error_str);
        emit updateGroupSignalEFull(worker, error_type, error_str);
    }
}


}