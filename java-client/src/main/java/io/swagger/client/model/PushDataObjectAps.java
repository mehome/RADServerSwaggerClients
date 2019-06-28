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
 * PushDataObjectAps
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2019-06-27T17:11:31.701Z")
public class PushDataObjectAps {
  @SerializedName("alert")
  private String alert = null;

  @SerializedName("badge")
  private String badge = null;

  @SerializedName("sound")
  private String sound = null;

  public PushDataObjectAps alert(String alert) {
    this.alert = alert;
    return this;
  }

   /**
   * Get alert
   * @return alert
  **/
  @ApiModelProperty(value = "")
  public String getAlert() {
    return alert;
  }

  public void setAlert(String alert) {
    this.alert = alert;
  }

  public PushDataObjectAps badge(String badge) {
    this.badge = badge;
    return this;
  }

   /**
   * Get badge
   * @return badge
  **/
  @ApiModelProperty(value = "")
  public String getBadge() {
    return badge;
  }

  public void setBadge(String badge) {
    this.badge = badge;
  }

  public PushDataObjectAps sound(String sound) {
    this.sound = sound;
    return this;
  }

   /**
   * Get sound
   * @return sound
  **/
  @ApiModelProperty(value = "")
  public String getSound() {
    return sound;
  }

  public void setSound(String sound) {
    this.sound = sound;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PushDataObjectAps pushDataObjectAps = (PushDataObjectAps) o;
    return Objects.equals(this.alert, pushDataObjectAps.alert) &&
        Objects.equals(this.badge, pushDataObjectAps.badge) &&
        Objects.equals(this.sound, pushDataObjectAps.sound);
  }

  @Override
  public int hashCode() {
    return Objects.hash(alert, badge, sound);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PushDataObjectAps {\n");
    
    sb.append("    alert: ").append(toIndentedString(alert)).append("\n");
    sb.append("    badge: ").append(toIndentedString(badge)).append("\n");
    sb.append("    sound: ").append(toIndentedString(sound)).append("\n");
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
