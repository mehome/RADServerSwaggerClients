//
// VersionObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct VersionObject: Codable {

    public var version: String?
    public var server: String?

    public init(version: String?, server: String?) {
        self.version = version
        self.server = server
    }


}

