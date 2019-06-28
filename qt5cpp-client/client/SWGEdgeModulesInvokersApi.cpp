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

#include "SWGEdgeModulesInvokersApi.h"
#include "SWGHelpers.h"
#include "SWGModelFactory.h"
#include "SWGQObjectWrapper.h"

#include <QJsonArray>
#include <QJsonDocument>

namespace Swagger {

SWGEdgeModulesInvokersApi::SWGEdgeModulesInvokersApi() {}

SWGEdgeModulesInvokersApi::~SWGEdgeModulesInvokersApi() {}

SWGEdgeModulesInvokersApi::SWGEdgeModulesInvokersApi(QString host, QString basePath) {
    this->host = host;
    this->basePath = basePath;
}

void
SWGEdgeModulesInvokersApi::deleteResourceEndpoint(QString* mname, QString* rname, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));


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
            &SWGEdgeModulesInvokersApi::deleteResourceEndpointCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::deleteResourceEndpointCallback(SWGHttpRequestWorker * worker) {
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
        emit deleteResourceEndpointSignal();
    } else {
        emit deleteResourceEndpointSignalE(error_type, error_str);
        emit deleteResourceEndpointSignalEFull(worker, error_type, error_str);
    }
}

void
SWGEdgeModulesInvokersApi::deleteResourceEndpointItem(QString* mname, QString* rname, QString* wildcard, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}/{wildcard}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));
    QString wildcardPathParam("{"); wildcardPathParam.append("wildcard").append("}");
    fullPath.replace(wildcardPathParam, stringValue(wildcard));


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
            &SWGEdgeModulesInvokersApi::deleteResourceEndpointItemCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::deleteResourceEndpointItemCallback(SWGHttpRequestWorker * worker) {
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
        emit deleteResourceEndpointItemSignal();
    } else {
        emit deleteResourceEndpointItemSignalE(error_type, error_str);
        emit deleteResourceEndpointItemSignalEFull(worker, error_type, error_str);
    }
}

void
SWGEdgeModulesInvokersApi::getResourceEndpoint(QString* mname, QString* rname, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));


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
            &SWGEdgeModulesInvokersApi::getResourceEndpointCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::getResourceEndpointCallback(SWGHttpRequestWorker * worker) {
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
        emit getResourceEndpointSignal();
    } else {
        emit getResourceEndpointSignalE(error_type, error_str);
        emit getResourceEndpointSignalEFull(worker, error_type, error_str);
    }
}

void
SWGEdgeModulesInvokersApi::getResourceEndpointItem(QString* mname, QString* rname, QString* wildcard, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}/{wildcard}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));
    QString wildcardPathParam("{"); wildcardPathParam.append("wildcard").append("}");
    fullPath.replace(wildcardPathParam, stringValue(wildcard));


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
            &SWGEdgeModulesInvokersApi::getResourceEndpointItemCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::getResourceEndpointItemCallback(SWGHttpRequestWorker * worker) {
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
        emit getResourceEndpointItemSignal();
    } else {
        emit getResourceEndpointItemSignalE(error_type, error_str);
        emit getResourceEndpointItemSignalEFull(worker, error_type, error_str);
    }
}

void
SWGEdgeModulesInvokersApi::patchResourceEndpoint(QString* mname, QString* rname, SWGObject*& body, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));


    SWGHttpRequestWorker *worker = new SWGHttpRequestWorker();
    SWGHttpRequestInput input(fullPath, "PATCH");


    
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
            &SWGEdgeModulesInvokersApi::patchResourceEndpointCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::patchResourceEndpointCallback(SWGHttpRequestWorker * worker) {
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
        emit patchResourceEndpointSignal();
    } else {
        emit patchResourceEndpointSignalE(error_type, error_str);
        emit patchResourceEndpointSignalEFull(worker, error_type, error_str);
    }
}

void
SWGEdgeModulesInvokersApi::patchResourceEndpointItem(QString* mname, QString* rname, QString* wildcard, SWGObject*& body, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}/{wildcard}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));
    QString wildcardPathParam("{"); wildcardPathParam.append("wildcard").append("}");
    fullPath.replace(wildcardPathParam, stringValue(wildcard));


    SWGHttpRequestWorker *worker = new SWGHttpRequestWorker();
    SWGHttpRequestInput input(fullPath, "PATCH");


    
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
            &SWGEdgeModulesInvokersApi::patchResourceEndpointItemCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::patchResourceEndpointItemCallback(SWGHttpRequestWorker * worker) {
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
        emit patchResourceEndpointItemSignal();
    } else {
        emit patchResourceEndpointItemSignalE(error_type, error_str);
        emit patchResourceEndpointItemSignalEFull(worker, error_type, error_str);
    }
}

void
SWGEdgeModulesInvokersApi::postResourceEndpoint(QString* mname, QString* rname, SWGObject*& body, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));


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
            &SWGEdgeModulesInvokersApi::postResourceEndpointCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::postResourceEndpointCallback(SWGHttpRequestWorker * worker) {
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
        emit postResourceEndpointSignal();
    } else {
        emit postResourceEndpointSignalE(error_type, error_str);
        emit postResourceEndpointSignalEFull(worker, error_type, error_str);
    }
}

void
SWGEdgeModulesInvokersApi::postResourceEndpointItem(QString* mname, QString* rname, QString* wildcard, SWGObject*& body, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}/{wildcard}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));
    QString wildcardPathParam("{"); wildcardPathParam.append("wildcard").append("}");
    fullPath.replace(wildcardPathParam, stringValue(wildcard));


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
            &SWGEdgeModulesInvokersApi::postResourceEndpointItemCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::postResourceEndpointItemCallback(SWGHttpRequestWorker * worker) {
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
        emit postResourceEndpointItemSignal();
    } else {
        emit postResourceEndpointItemSignalE(error_type, error_str);
        emit postResourceEndpointItemSignalEFull(worker, error_type, error_str);
    }
}

void
SWGEdgeModulesInvokersApi::putResourceEndpoint(QString* mname, QString* rname, SWGObject*& body, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));


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
            &SWGEdgeModulesInvokersApi::putResourceEndpointCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::putResourceEndpointCallback(SWGHttpRequestWorker * worker) {
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
        emit putResourceEndpointSignal();
    } else {
        emit putResourceEndpointSignalE(error_type, error_str);
        emit putResourceEndpointSignalEFull(worker, error_type, error_str);
    }
}

void
SWGEdgeModulesInvokersApi::putResourceEndpointItem(QString* mname, QString* rname, QString* wildcard, SWGObject*& body, QString* x_embarcadero_application_id, QString* x_embarcadero_app_secret, QString* x_embarcadero_master_secret) {
    QString fullPath;
    fullPath.append(this->host).append(this->basePath).append("/edgemodules/{mname}/{rname}/{wildcard}");

    QString mnamePathParam("{"); mnamePathParam.append("mname").append("}");
    fullPath.replace(mnamePathParam, stringValue(mname));
    QString rnamePathParam("{"); rnamePathParam.append("rname").append("}");
    fullPath.replace(rnamePathParam, stringValue(rname));
    QString wildcardPathParam("{"); wildcardPathParam.append("wildcard").append("}");
    fullPath.replace(wildcardPathParam, stringValue(wildcard));


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
            &SWGEdgeModulesInvokersApi::putResourceEndpointItemCallback);

    worker->execute(&input);
}

void
SWGEdgeModulesInvokersApi::putResourceEndpointItemCallback(SWGHttpRequestWorker * worker) {
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
        emit putResourceEndpointItemSignal();
    } else {
        emit putResourceEndpointItemSignalE(error_type, error_str);
        emit putResourceEndpointItemSignalEFull(worker, error_type, error_str);
    }
}


}
