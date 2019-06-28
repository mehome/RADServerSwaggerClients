//
// PushWhereObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PushWhereObject: JSONEncodable {
    public enum DeviceType: String { 
        case Ios = "ios"
        case Android = "android"
    }
    public var deviceType: DeviceType?
    public var deviceToken: PushWhereObjectDeviceToken?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["deviceType"] = self.deviceType?.rawValue
        nillableDictionary["deviceToken"] = self.deviceToken?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
