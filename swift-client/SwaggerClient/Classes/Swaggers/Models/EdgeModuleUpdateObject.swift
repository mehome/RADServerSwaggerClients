//
// EdgeModuleUpdateObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class EdgeModuleUpdateObject: JSONEncodable {
    public var modulename: String?
    public var _protocol: String?
    public var protocolprops: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["modulename"] = self.modulename
        nillableDictionary["protocol"] = self._protocol
        nillableDictionary["protocolprops"] = self.protocolprops
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
