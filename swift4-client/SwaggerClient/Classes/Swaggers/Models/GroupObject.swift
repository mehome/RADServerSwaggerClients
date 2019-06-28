//
// GroupObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct GroupObject: Codable {

    public var name: String
    public var meta: MetaGroupObject
    public var users: [String]?

    public init(name: String, meta: MetaGroupObject, users: [String]?) {
        self.name = name
        self.meta = meta
        self.users = users
    }
    public var additionalProperties: [String:String] = [:]

    public subscript(key: String) -> String? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(name, forKey: "name")
        try container.encode(meta, forKey: "_meta")
        try container.encodeIfPresent(users, forKey: "users")
        try container.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        name = try container.decode(String.self, forKey: "name")
        meta = try container.decode(MetaGroupObject.self, forKey: "_meta")
        users = try container.decodeIfPresent([String].self, forKey: "users")
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("name")
        nonAdditionalPropertyKeys.insert("_meta")
        nonAdditionalPropertyKeys.insert("users")
        additionalProperties = try container.decodeMap(String.self, excludedKeys: nonAdditionalPropertyKeys)
    }



}

