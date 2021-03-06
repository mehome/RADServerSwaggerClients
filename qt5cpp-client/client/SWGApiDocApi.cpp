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

#include "SWGApiDocApi.h"
#include "SWGHelpers.h"
#include "SWGModelFactory.h"
#include "SWGQObjectWrapper.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace Swagger {

SWGApiDocApi::SWGApiDocApi() {}

SWGApiDocApi::~SWGApiDocApi() {}

SWGApiDocApi::SWGApiDocApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
SWGApiDocApi::aPI(QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/api");



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
            &SWGApiDocApi::aPICallback);

    worker->execute(&input);
}

void
SWGApiDocApi::aPICallback(SWGHttpRequestWorker * worker) {
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
        emit aPISignal();
    } else {
        emit aPISignalE(error_type, error_str);
        emit aPISignalEFull(worker, error_type, error_str);
    }
}

void
SWGApiDocApi::getAPIJSONFormat(QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/api/apidoc.json");



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
            &SWGApiDocApi::getAPIJSONFormatCallback);

    worker->execute(&input);
}

void
SWGApiDocApi::getAPIJSONFormatCallback(SWGHttpRequestWorker * worker) {
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
        emit getAPIJSONFormatSignal();
    } else {
        emit getAPIJSONFormatSignalE(error_type, error_str);
        emit getAPIJSONFormatSignalEFull(worker, error_type, error_str);
    }
}

void
SWGApiDocApi::getAPIYAMLFormat(QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/api/apidoc.yaml");



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
            &SWGApiDocApi::getAPIYAMLFormatCallback);

    worker->execute(&input);
}

void
SWGApiDocApi::getAPIYAMLFormatCallback(SWGHttpRequestWorker * worker) {
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
        emit getAPIYAMLFormatSignal();
    } else {
        emit getAPIYAMLFormatSignalE(error_type, error_str);
        emit getAPIYAMLFormatSignalEFull(worker, error_type, error_str);
    }
}

void
SWGApiDocApi::getAPIYAMLFormat_EndPoint(QString* item, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/api/{item}/apidoc.yaml");

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
            &SWGApiDocApi::getAPIYAMLFormat_EndPointCallback);

    worker->execute(&input);
}

void
SWGApiDocApi::getAPIYAMLFormat_EndPointCallback(SWGHttpRequestWorker * worker) {
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
        emit getAPIYAMLFormat_EndPointSignal();
    } else {
        emit getAPIYAMLFormat_EndPointSignalE(error_type, error_str);
        emit getAPIYAMLFormat_EndPointSignalEFull(worker, error_type, error_str);
    }
}


}
