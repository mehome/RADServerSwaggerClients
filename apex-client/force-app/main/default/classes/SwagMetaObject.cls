/*
 * EMS API Documentation
 * Enterprise Mobility Services API\r\n\r\n  [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)\r\n\r\n  EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)\r\n\r\n  TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/**
 * SwagMetaObject
 */
public class SwagMetaObject {
    /**
     * Get creator
     * @return creator
     */
    public String creator { get; set; }

    /**
     * Get created
     * @return created
     */
    public String created { get; set; }

    /**
     * Get updated
     * @return updated
     */
    public String updated { get; set; }

    public static SwagMetaObject getExample() {
        SwagMetaObject metaObject = new SwagMetaObject();
        metaObject.creator = 'aeiou';
        metaObject.created = 'aeiou';
        metaObject.updated = 'aeiou';
        return metaObject;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof SwagMetaObject) {
            SwagMetaObject metaObject = (SwagMetaObject) obj;
            return this.creator == metaObject.creator
                && this.created == metaObject.created
                && this.updated == metaObject.updated;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (creator == null ? 0 : System.hashCode(creator));
        hashCode = (17 * hashCode) + (created == null ? 0 : System.hashCode(created));
        hashCode = (17 * hashCode) + (updated == null ? 0 : System.hashCode(updated));
        return hashCode;
    }
}
