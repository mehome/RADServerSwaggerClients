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
import io.swagger.client.model.FieldObjectFields;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * FieldsEdgeModuleObject
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaClientCodegen", date = "2019-06-27T17:11:31.701Z")
public class FieldsEdgeModuleObject {
  @SerializedName("name")
  private String name = null;

  @SerializedName("fields")
  private List<FieldObjectFields> fields = null;

  @SerializedName("custom")
  private Boolean custom = null;

  public FieldsEdgeModuleObject name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public FieldsEdgeModuleObject fields(List<FieldObjectFields> fields) {
    this.fields = fields;
    return this;
  }

  public FieldsEdgeModuleObject addFieldsItem(FieldObjectFields fieldsItem) {
    if (this.fields == null) {
      this.fields = new ArrayList<FieldObjectFields>();
    }
    this.fields.add(fieldsItem);
    return this;
  }

   /**
   * Get fields
   * @return fields
  **/
  @ApiModelProperty(value = "")
  public List<FieldObjectFields> getFields() {
    return fields;
  }

  public void setFields(List<FieldObjectFields> fields) {
    this.fields = fields;
  }

  public FieldsEdgeModuleObject custom(Boolean custom) {
    this.custom = custom;
    return this;
  }

   /**
   * Get custom
   * @return custom
  **/
  @ApiModelProperty(value = "")
  public Boolean isCustom() {
    return custom;
  }

  public void setCustom(Boolean custom) {
    this.custom = custom;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FieldsEdgeModuleObject fieldsEdgeModuleObject = (FieldsEdgeModuleObject) o;
    return Objects.equals(this.name, fieldsEdgeModuleObject.name) &&
        Objects.equals(this.fields, fieldsEdgeModuleObject.fields) &&
        Objects.equals(this.custom, fieldsEdgeModuleObject.custom);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, fields, custom);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FieldsEdgeModuleObject {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    fields: ").append(toIndentedString(fields)).append("\n");
    sb.append("    custom: ").append(toIndentedString(custom)).append("\n");
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

