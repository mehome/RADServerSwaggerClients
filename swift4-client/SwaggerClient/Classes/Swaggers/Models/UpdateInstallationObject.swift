//
// UpdateInstallationObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UpdateInstallationObject: Codable {

    public var channels: [String]?

    public init(channels: [String]?) {
        self.channels = channels
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

        try container.encodeIfPresent(channels, forKey: "channels")
        try container.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        channels = try container.decodeIfPresent([String].self, forKey: "channels")
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("channels")
        additionalProperties = try container.decodeMap(String.self, excludedKeys: nonAdditionalPropertyKeys)
    }



}

