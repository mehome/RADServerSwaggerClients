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
    /// UserTokenObject
    /// </summary>
    [DataContract]
    public partial class UserTokenObject :  IEquatable<UserTokenObject>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UserTokenObject" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected UserTokenObject() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="UserTokenObject" /> class.
        /// </summary>
        /// <param name="id">id (required).</param>
        /// <param name="username">username (required).</param>
        /// <param name="meta">meta (required).</param>
        /// <param name="sessiontoken">sessiontoken (required).</param>
        public UserTokenObject(string id = default(string), string username = default(string), MetaObject meta = default(MetaObject), string sessiontoken = default(string))
        {
            // to ensure "id" is required (not null)
            if (id == null)
            {
                throw new InvalidDataException("id is a required property for UserTokenObject and cannot be null");
            }
            else
            {
                this.Id = id;
            }
            // to ensure "username" is required (not null)
            if (username == null)
            {
                throw new InvalidDataException("username is a required property for UserTokenObject and cannot be null");
            }
            else
            {
                this.Username = username;
            }
            // to ensure "meta" is required (not null)
            if (meta == null)
            {
                throw new InvalidDataException("meta is a required property for UserTokenObject and cannot be null");
            }
            else
            {
                this.Meta = meta;
            }
            // to ensure "sessiontoken" is required (not null)
            if (sessiontoken == null)
            {
                throw new InvalidDataException("sessiontoken is a required property for UserTokenObject and cannot be null");
            }
            else
            {
                this.Sessiontoken = sessiontoken;
            }
        }
        
        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Username
        /// </summary>
        [DataMember(Name="username", EmitDefaultValue=false)]
        public string Username { get; set; }

        /// <summary>
        /// Gets or Sets Meta
        /// </summary>
        [DataMember(Name="_meta", EmitDefaultValue=false)]
        public MetaObject Meta { get; set; }

        /// <summary>
        /// Gets or Sets Sessiontoken
        /// </summary>
        [DataMember(Name="sessiontoken", EmitDefaultValue=false)]
        public string Sessiontoken { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class UserTokenObject {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Username: ").Append(Username).Append("\n");
            sb.Append("  Meta: ").Append(Meta).Append("\n");
            sb.Append("  Sessiontoken: ").Append(Sessiontoken).Append("\n");
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
            return this.Equals(input as UserTokenObject);
        }

        /// <summary>
        /// Returns true if UserTokenObject instances are equal
        /// </summary>
        /// <param name="input">Instance of UserTokenObject to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UserTokenObject input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Username == input.Username ||
                    (this.Username != null &&
                    this.Username.Equals(input.Username))
                ) && 
                (
                    this.Meta == input.Meta ||
                    (this.Meta != null &&
                    this.Meta.Equals(input.Meta))
                ) && 
                (
                    this.Sessiontoken == input.Sessiontoken ||
                    (this.Sessiontoken != null &&
                    this.Sessiontoken.Equals(input.Sessiontoken))
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
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Username != null)
                    hashCode = hashCode * 59 + this.Username.GetHashCode();
                if (this.Meta != null)
                    hashCode = hashCode * 59 + this.Meta.GetHashCode();
                if (this.Sessiontoken != null)
                    hashCode = hashCode * 59 + this.Sessiontoken.GetHashCode();
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
