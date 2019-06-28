/* 
 * EMS API Documentation
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// EdgeModuleResourceUpdatedObject
    /// </summary>
    [DataContract]
    public partial class EdgeModuleResourceUpdatedObject :  IEquatable<EdgeModuleResourceUpdatedObject>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="EdgeModuleResourceUpdatedObject" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected EdgeModuleResourceUpdatedObject() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="EdgeModuleResourceUpdatedObject" /> class.
        /// </summary>
        /// <param name="updated">updated (required).</param>
        public EdgeModuleResourceUpdatedObject(string updated = default(string))
        {
            // to ensure "updated" is required (not null)
            if (updated == null)
            {
                throw new InvalidDataException("updated is a required property for EdgeModuleResourceUpdatedObject and cannot be null");
            }
            else
            {
                this.Updated = updated;
            }
        }
        
        /// <summary>
        /// Gets or Sets Updated
        /// </summary>
        [DataMember(Name="updated", EmitDefaultValue=false)]
        public string Updated { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class EdgeModuleResourceUpdatedObject {\n");
            sb.Append("  Updated: ").Append(Updated).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as EdgeModuleResourceUpdatedObject);
        }

        /// <summary>
        /// Returns true if EdgeModuleResourceUpdatedObject instances are equal
        /// </summary>
        /// <param name="input">Instance of EdgeModuleResourceUpdatedObject to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(EdgeModuleResourceUpdatedObject input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Updated == input.Updated ||
                    (this.Updated != null &&
                    this.Updated.Equals(input.Updated))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Updated != null)
                    hashCode = hashCode * 59 + this.Updated.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}