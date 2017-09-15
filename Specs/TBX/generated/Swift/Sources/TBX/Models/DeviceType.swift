//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class DeviceType: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var shortName: String

    public var contentProvider: ObjectID?

    public var defaultExpireDays: Double?

    public var deviceType: String?

    public var id: ObjectID?

    public var needActivation: Bool?

    public init(shortName: String, contentProvider: ObjectID? = nil, defaultExpireDays: Double? = nil, deviceType: String? = nil, id: ObjectID? = nil, needActivation: Bool? = nil) {
        self.shortName = shortName
        self.contentProvider = contentProvider
        self.defaultExpireDays = defaultExpireDays
        self.deviceType = deviceType
        self.id = id
        self.needActivation = needActivation
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        shortName = try jsonDictionary.json(atKeyPath: "shortName")
        contentProvider = jsonDictionary.json(atKeyPath: "contentProvider")
        defaultExpireDays = jsonDictionary.json(atKeyPath: "defaultExpireDays")
        deviceType = jsonDictionary.json(atKeyPath: "deviceType")
        id = jsonDictionary.json(atKeyPath: "id")
        needActivation = jsonDictionary.json(atKeyPath: "needActivation")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["shortName"] = shortName
        if let contentProvider = contentProvider?.encode() {
            dictionary["contentProvider"] = contentProvider
        }
        if let defaultExpireDays = defaultExpireDays {
            dictionary["defaultExpireDays"] = defaultExpireDays
        }
        if let deviceType = deviceType {
            dictionary["deviceType"] = deviceType
        }
        if let id = id?.encode() {
            dictionary["id"] = id
        }
        if let needActivation = needActivation {
            dictionary["needActivation"] = needActivation
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
