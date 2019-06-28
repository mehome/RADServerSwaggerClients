//
// InstallationAddObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class InstallationAddObject: JSONEncodable {

    public var deviceToken: String?
    public var deviceType: String?
    public var channels: [String]?

    public var additionalProperties: [AnyHashable:String] = [:]

    public init() {}

    public subscript(key: AnyHashable) -> String? {
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
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["deviceToken"] = self.deviceToken
        nillableDictionary["deviceType"] = self.deviceType
        nillableDictionary["channels"] = self.channels?.encodeToJSON()

        for (key, value) in additionalProperties {
            if let key = key as? String {
               nillableDictionary[key] = value
            }
        }

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

