//
// PushDataObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PushDataObject: Codable {

    public var gcm: PushDataObjectGcm?
    public var aps: PushDataObjectAps?
    public var extras: PushDataObjectExtras?

    public init(gcm: PushDataObjectGcm?, aps: PushDataObjectAps?, extras: PushDataObjectExtras?) {
        self.gcm = gcm
        self.aps = aps
        self.extras = extras
    }


}
