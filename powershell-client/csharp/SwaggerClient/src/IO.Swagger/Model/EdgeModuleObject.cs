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
    /// EdgeModuleObject
    /// </summary>
    [DataContract]
    public partial class EdgeModuleObject : Dictionary<String, string>,  IEquatable<EdgeModuleObject>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="EdgeModuleObject" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected EdgeModuleObject() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="EdgeModuleObject" /> class.
        /// </summary>
        /// <param name="modulename">modulename (required).</param>
        /// <param name="id">id (required).</param>
        /// <param name="protocol">protocol (required).</param>
        /// <param name="protocolprops">protocolprops (required).</param>
        /// <param name="meta">meta (required).</param>
        public EdgeModuleObject(string modulename = default(string), string id = default(string), string protocol = default(string), string protocolprops = default(string), MetaEdgeModuleObject meta = default(MetaEdgeModuleObject)) : base()
        {
            // to ensure "modulename" is required (not null)
            if (modulename == null)
            {
                throw new InvalidDataException("modulename is a required property for EdgeModuleObject and cannot be null");
            }
            else
            {
                this.Modulename = modulename;
            }
            // to ensure "id" is required (not null)
            if (id == null)
            {
                throw new InvalidDataException("id is a required property for EdgeModuleObject and cannot be null");
            }
            else
            {
                this.Id = id;
            }
            // to ensure "protocol" is required (not null)
            if (protocol == null)
            {
                throw new InvalidDataException("protocol is a required property for EdgeModuleObject and cannot be null");
            }
            else
            {
                this.Protocol = protocol;
            }
            // to ensure "protocolprops" is required (not null)
            if (protocolprops == null)
            {
                throw new InvalidDataException("protocolprops is a required property for EdgeModuleObject and cannot be null");
            }
            else
            {
                this.Protocolprops = protocolprops;
            }
            // to ensure "meta" is required (not null)
            if (meta == null)
            {
                throw new InvalidDataException("meta is a required property for EdgeModuleObject and cannot be null");
            }
            else
            {
                this.Meta = meta;
            }
        }
        
        /// <summary>
        /// Gets or Sets Modulename
        /// </summary>
        [DataMember(Name="modulename", EmitDefaultValue=false)]
        public string Modulename { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="_id", EmitDefaultValue=false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Protocol
        /// </summary>
        [DataMember(Name="protocol", EmitDefaultValue=false)]
        public string Protocol { get; set; }

        /// <summary>
        /// Gets or Sets Protocolprops
        /// </summary>
        [DataMember(Name="protocolprops", EmitDefaultValue=false)]
        public string Protocolprops { get; set; }

        /// <summary>
        /// Gets or Sets Meta
        /// </summary>
        [DataMember(Name="_meta", EmitDefaultValue=false)]
        public MetaEdgeModuleObject Meta { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class EdgeModuleObject {\n");
            sb.Append("  ").Append(base.ToString().Replace("\n", "\n  ")).Append("\n");
            sb.Append("  Modulename: ").Append(Modulename).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Protocol: ").Append(Protocol).Append("\n");
            sb.Append("  Protocolprops: ").Append(Protocolprops).Append("\n");
            sb.Append("  Meta: ").Append(Meta).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public override string ToJson()
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
            return this.Equals(input as EdgeModuleObject);
        }

        /// <summary>
        /// Returns true if EdgeModuleObject instances are equal
        /// </summary>
        /// <param name="input">Instance of EdgeModuleObject to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(EdgeModuleObject input)
        {
            if (input == null)
                return false;

            return base.Equals(input) && 
                (
                    this.Modulename == input.Modulename ||
                    (this.Modulename != null &&
                    this.Modulename.Equals(input.Modulename))
                ) && base.Equals(input) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && base.Equals(input) && 
                (
                    this.Protocol == input.Protocol ||
                    (this.Protocol != null &&
                    this.Protocol.Equals(input.Protocol))
                ) && base.Equals(input) && 
                (
                    this.Protocolprops == input.Protocolprops ||
                    (this.Protocolprops != null &&
                    this.Protocolprops.Equals(input.Protocolprops))
                ) && base.Equals(input) && 
                (
                    this.Meta == input.Meta ||
                    (this.Meta != null &&
                    this.Meta.Equals(input.Meta))
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
                int hashCode = base.GetHashCode();
                if (this.Modulename != null)
                    hashCode = hashCode * 59 + this.Modulename.GetHashCode();
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Protocol != null)
                    hashCode = hashCode * 59 + this.Protocol.GetHashCode();
                if (this.Protocolprops != null)
                    hashCode = hashCode * 59 + this.Protocolprops.GetHashCode();
                if (this.Meta != null)
                    hashCode = hashCode * 59 + this.Meta.GetHashCode();
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
            foreach(var x in BaseValidate(validationContext)) yield return x;
            // Protocolprops (string) pattern
            Regex regexProtocolprops = new Regex(@"\\{\\\\\"port\\\\\":[0-9]{2,5},\\\\\"host\\\\\":\\\\\"([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3})\\\\\"\\}", RegexOptions.CultureInvariant);
            if (false == regexProtocolprops.Match(this.Protocolprops).Success)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Protocolprops, must match a pattern of " + regexProtocolprops, new [] { "Protocolprops" });
            }

            yield break;
        }
    }

}