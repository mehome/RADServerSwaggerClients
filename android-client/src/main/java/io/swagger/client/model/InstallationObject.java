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

package io.swagger.client.model;

import io.swagger.client.model.MetaInstallationObject;
import java.util.*;
import java.util.HashMap;
import java.util.Map;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class InstallationObject extends HashMap<String, String> {
  
  @SerializedName("_id")
  private String id = null;
  @SerializedName("deviceToken")
  private String deviceToken = null;
  public enum DeviceTypeEnum {
     ios,  android, 
  };
  @SerializedName("deviceType")
  private DeviceTypeEnum deviceType = null;
  @SerializedName("_meta")
  private MetaInstallationObject meta = null;
  @SerializedName("channels")
  private List<String> channels = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getDeviceToken() {
    return deviceToken;
  }
  public void setDeviceToken(String deviceToken) {
    this.deviceToken = deviceToken;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public DeviceTypeEnum getDeviceType() {
    return deviceType;
  }
  public void setDeviceType(DeviceTypeEnum deviceType) {
    this.deviceType = deviceType;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public MetaInstallationObject getMeta() {
    return meta;
  }
  public void setMeta(MetaInstallationObject meta) {
    this.meta = meta;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getChannels() {
    return channels;
  }
  public void setChannels(List<String> channels) {
    this.channels = channels;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InstallationObject installationObject = (InstallationObject) o;
    return (this.id == null ? installationObject.id == null : this.id.equals(installationObject.id)) &&
        (this.deviceToken == null ? installationObject.deviceToken == null : this.deviceToken.equals(installationObject.deviceToken)) &&
        (this.deviceType == null ? installationObject.deviceType == null : this.deviceType.equals(installationObject.deviceType)) &&
        (this.meta == null ? installationObject.meta == null : this.meta.equals(installationObject.meta)) &&
        (this.channels == null ? installationObject.channels == null : this.channels.equals(installationObject.channels));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.deviceToken == null ? 0: this.deviceToken.hashCode());
    result = 31 * result + (this.deviceType == null ? 0: this.deviceType.hashCode());
    result = 31 * result + (this.meta == null ? 0: this.meta.hashCode());
    result = 31 * result + (this.channels == null ? 0: this.channels.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InstallationObject {\n");
    sb.append("  " + super.toString()).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  deviceToken: ").append(deviceToken).append("\n");
    sb.append("  deviceType: ").append(deviceType).append("\n");
    sb.append("  meta: ").append(meta).append("\n");
    sb.append("  channels: ").append(channels).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
