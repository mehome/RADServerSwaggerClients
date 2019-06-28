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

package io.swagger.client.api

import java.text.SimpleDateFormat

import io.swagger.client.{ApiInvoker, ApiException}

import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart

import javax.ws.rs.core.MediaType

import java.io.File
import java.util.Date
import java.util.TimeZone

import scala.collection.mutable.HashMap

import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

import java.net.URI

import com.wordnik.swagger.client.ClientResponseReaders.Json4sFormatsReader._
import com.wordnik.swagger.client.RequestWriters.Json4sFormatsWriter._

import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent._
import scala.concurrent.duration._
import scala.util.{Failure, Success, Try}

import org.json4s._

class EdgeModulesInvokersApi(
  val defBasePath: String = "http://localhost:8080",
  defApiInvoker: ApiInvoker = ApiInvoker
) {
  private lazy val dateTimeFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  private val dateFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  implicit val formats = new org.json4s.DefaultFormats {
    override def dateFormatter = dateTimeFormatter
  }
  implicit val stringReader: ClientResponseReader[String] = ClientResponseReaders.StringReader
  implicit val unitReader: ClientResponseReader[Unit] = ClientResponseReaders.UnitReader
  implicit val jvalueReader: ClientResponseReader[JValue] = ClientResponseReaders.JValueReader
  implicit val jsonReader: ClientResponseReader[Nothing] = JsonFormatsReader
  implicit val stringWriter: RequestWriter[String] = RequestWriters.StringWriter
  implicit val jsonWriter: RequestWriter[Nothing] = JsonFormatsWriter

  var basePath: String = defBasePath
  var apiInvoker: ApiInvoker = defApiInvoker

  def addHeader(key: String, value: String): mutable.HashMap[String, String] = {
    apiInvoker.defaultHeaders += key -> value
  }

  val config: SwaggerConfig = SwaggerConfig.forUrl(new URI(defBasePath))
  val client = new RestClient(config)
  val helper = new EdgeModulesInvokersApiAsyncHelper(client, config)

  /**
   * Invoke Resource Delete Method
   * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def deleteResourceEndpoint(mname: String, rname: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(deleteResourceEndpointAsync(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource Delete Method asynchronously
   * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def deleteResourceEndpointAsync(mname: String, rname: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.deleteResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Invoke Resource/_* Delete Method
   * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def deleteResourceEndpointItem(mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(deleteResourceEndpointItemAsync(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource/_* Delete Method asynchronously
   * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def deleteResourceEndpointItemAsync(mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.deleteResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Invoke Resource Get Method
   * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def getResourceEndpoint(mname: String, rname: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(getResourceEndpointAsync(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource Get Method asynchronously
   * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def getResourceEndpointAsync(mname: String, rname: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.getResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Invoke Resource/_* Get Method
   * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def getResourceEndpointItem(mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(getResourceEndpointItemAsync(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource/_* Get Method asynchronously
   * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def getResourceEndpointItemAsync(mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.getResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Invoke Resource Patch Method
   * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def patchResourceEndpoint(mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(patchResourceEndpointAsync(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource Patch Method asynchronously
   * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def patchResourceEndpointAsync(mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.patchResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Invoke Resource/_* Patch Method
   * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def patchResourceEndpointItem(mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(patchResourceEndpointItemAsync(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource/_* Patch Method asynchronously
   * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def patchResourceEndpointItemAsync(mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.patchResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Invoke Resource Post Method
   * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def postResourceEndpoint(mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(postResourceEndpointAsync(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource Post Method asynchronously
   * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def postResourceEndpointAsync(mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.postResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Invoke Resource/_* Post Method
   * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def postResourceEndpointItem(mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(postResourceEndpointItemAsync(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource/_* Post Method asynchronously
   * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def postResourceEndpointItemAsync(mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.postResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Invoke Resource Put Method
   * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def putResourceEndpoint(mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(putResourceEndpointAsync(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource Put Method asynchronously
   * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def putResourceEndpointAsync(mname: String, rname: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.putResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

  /**
   * Invoke Resource/_* Put Method
   * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return void
   */
  def putResourceEndpointItem(mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
    val await = Try(Await.result(putResourceEndpointItemAsync(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Invoke Resource/_* Put Method asynchronously
   * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
   *
   * @param mname Is the EMS EdgeModule name 
   * @param rname Is the unique EMS EdgeModule Resource name 
   * @param wildcard Is the Wild card part of the URL 
   * @param body Body Object 
   * @param xEmbarcaderoApplicationId  (optional)
   * @param xEmbarcaderoAppSecret  (optional)
   * @param xEmbarcaderoMasterSecret  (optional)
   * @return Future(void)
   */
  def putResourceEndpointItemAsync(mname: String, rname: String, wildcard: String, body: Any, xEmbarcaderoApplicationId: Option[String] = None, xEmbarcaderoAppSecret: Option[String] = None, xEmbarcaderoMasterSecret: Option[String] = None) = {
      helper.putResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret)
  }

}

class EdgeModulesInvokersApiAsyncHelper(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def deleteResourceEndpoint(mname: String,
    rname: String,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->deleteResourceEndpoint")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->deleteResourceEndpoint")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("DELETE", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def deleteResourceEndpointItem(mname: String,
    rname: String,
    wildcard: String,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}/{wildcard}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString)
      replaceAll("\\{" + "wildcard" + "\\}", wildcard.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->deleteResourceEndpointItem")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->deleteResourceEndpointItem")

    if (wildcard == null) throw new Exception("Missing required parameter 'wildcard' when calling EdgeModulesInvokersApi->deleteResourceEndpointItem")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("DELETE", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getResourceEndpoint(mname: String,
    rname: String,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->getResourceEndpoint")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->getResourceEndpoint")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getResourceEndpointItem(mname: String,
    rname: String,
    wildcard: String,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}/{wildcard}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString)
      replaceAll("\\{" + "wildcard" + "\\}", wildcard.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->getResourceEndpointItem")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->getResourceEndpointItem")

    if (wildcard == null) throw new Exception("Missing required parameter 'wildcard' when calling EdgeModulesInvokersApi->getResourceEndpointItem")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def patchResourceEndpoint(mname: String,
    rname: String,
    body: Any,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[Any]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->patchResourceEndpoint")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->patchResourceEndpoint")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("PATCH", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def patchResourceEndpointItem(mname: String,
    rname: String,
    wildcard: String,
    body: Any,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[Any]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}/{wildcard}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString)
      replaceAll("\\{" + "wildcard" + "\\}", wildcard.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->patchResourceEndpointItem")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->patchResourceEndpointItem")

    if (wildcard == null) throw new Exception("Missing required parameter 'wildcard' when calling EdgeModulesInvokersApi->patchResourceEndpointItem")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("PATCH", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postResourceEndpoint(mname: String,
    rname: String,
    body: Any,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[Any]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->postResourceEndpoint")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->postResourceEndpoint")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def postResourceEndpointItem(mname: String,
    rname: String,
    wildcard: String,
    body: Any,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[Any]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}/{wildcard}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString)
      replaceAll("\\{" + "wildcard" + "\\}", wildcard.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->postResourceEndpointItem")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->postResourceEndpointItem")

    if (wildcard == null) throw new Exception("Missing required parameter 'wildcard' when calling EdgeModulesInvokersApi->postResourceEndpointItem")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def putResourceEndpoint(mname: String,
    rname: String,
    body: Any,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[Any]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->putResourceEndpoint")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->putResourceEndpoint")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("PUT", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def putResourceEndpointItem(mname: String,
    rname: String,
    wildcard: String,
    body: Any,
    xEmbarcaderoApplicationId: Option[String] = None,
    xEmbarcaderoAppSecret: Option[String] = None,
    xEmbarcaderoMasterSecret: Option[String] = None
    )(implicit reader: ClientResponseReader[Unit], writer: RequestWriter[Any]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/edgemodules/{mname}/{rname}/{wildcard}")
      replaceAll("\\{" + "mname" + "\\}", mname.toString)
      replaceAll("\\{" + "rname" + "\\}", rname.toString)
      replaceAll("\\{" + "wildcard" + "\\}", wildcard.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (mname == null) throw new Exception("Missing required parameter 'mname' when calling EdgeModulesInvokersApi->putResourceEndpointItem")

    if (rname == null) throw new Exception("Missing required parameter 'rname' when calling EdgeModulesInvokersApi->putResourceEndpointItem")

    if (wildcard == null) throw new Exception("Missing required parameter 'wildcard' when calling EdgeModulesInvokersApi->putResourceEndpointItem")

    xEmbarcaderoApplicationId match {
      case Some(param) => headerParams += "X-Embarcadero-Application-Id" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoAppSecret match {
      case Some(param) => headerParams += "X-Embarcadero-App-Secret" -> param.toString
      case _ => headerParams
    }
    xEmbarcaderoMasterSecret match {
      case Some(param) => headerParams += "X-Embarcadero-Master-Secret" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("PUT", path, queryParams.toMap, headerParams.toMap, writer.write(body))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
