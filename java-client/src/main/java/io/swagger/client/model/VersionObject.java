/*
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


package io.swagger.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * VersionObject
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2019-06-27T17:11:31.701Z")
public class VersionObject {
  @SerializedName("version")
  private String version = null;

  @SerializedName("server")
  private String server = null;

  public VersionObject version(String version) {
    this.version = version;
    return this;
  }

   /**
   * Get version
   * @return version
  **/
  @ApiModelProperty(value = "")
  public String getVersion() {
    return version;
  }

  public void setVersion(String version) {
    this.version = version;
  }

  public VersionObject server(String server) {
    this.server = server;
    return this;
  }

   /**
   * Get server
   * @return server
  **/
  @ApiModelProperty(value = "")
  public String getServer() {
    return server;
  }

  public void setServer(String server) {
    this.server = server;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VersionObject versionObject = (VersionObject) o;
    return Objects.equals(this.version, versionObject.version) &&
        Objects.equals(this.server, versionObject.server);
  }

  @Override
  public int hashCode() {
    return Objects.hash(version, server);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VersionObject {\n");
    
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    server: ").append(toIndentedString(server)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}
