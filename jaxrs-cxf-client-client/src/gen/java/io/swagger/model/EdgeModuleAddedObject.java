package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class EdgeModuleAddedObject  {
  
  @ApiModelProperty(required = true, value = "")
  private String id = null;

  @ApiModelProperty(required = true, value = "")
  private String modulename = null;
 /**
   * Get id
   * @return id
  **/
  @JsonProperty("_id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public EdgeModuleAddedObject id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get modulename
   * @return modulename
  **/
  @JsonProperty("modulename")
  public String getModulename() {
    return modulename;
  }

  public void setModulename(String modulename) {
    this.modulename = modulename;
  }

  public EdgeModuleAddedObject modulename(String modulename) {
    this.modulename = modulename;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EdgeModuleAddedObject {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    modulename: ").append(toIndentedString(modulename)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

