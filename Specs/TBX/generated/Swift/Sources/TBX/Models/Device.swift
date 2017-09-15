//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Device: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var id: String

    public var created: Date?

    public var customer: ObjectID?

    public var customerId: ObjectID?

    public var data: [String: Any]?

    public var deactivateDate: Date?

    public var description: String?

    public var deviceType: ObjectID?

    public var expirationDate: Date?

    public var identifier: String?

    public var lastLogin: Date?

    public var loggedOutDate: Date?

    public var updated: Date?

    public init(id: String, created: Date? = nil, customer: ObjectID? = nil, customerId: ObjectID? = nil, data: [String: Any]? = nil, deactivateDate: Date? = nil, description: String? = nil, deviceType: ObjectID? = nil, expirationDate: Date? = nil, identifier: String? = nil, lastLogin: Date? = nil, loggedOutDate: Date? = nil, updated: Date? = nil) {
        self.id = id
        self.created = created
        self.customer = customer
        self.customerId = customerId
        self.data = data
        self.deactivateDate = deactivateDate
        self.description = description
        self.deviceType = deviceType
        self.expirationDate = expirationDate
        self.identifier = identifier
        self.lastLogin = lastLogin
        self.loggedOutDate = loggedOutDate
        self.updated = updated
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        id = try jsonDictionary.json(atKeyPath: "id")
        created = jsonDictionary.json(atKeyPath: "created")
        customer = jsonDictionary.json(atKeyPath: "customer")
        customerId = jsonDictionary.json(atKeyPath: "customerId")
        data = jsonDictionary.json(atKeyPath: "data")
        deactivateDate = jsonDictionary.json(atKeyPath: "deactivateDate")
        description = jsonDictionary.json(atKeyPath: "description")
        deviceType = jsonDictionary.json(atKeyPath: "deviceType")
        expirationDate = jsonDictionary.json(atKeyPath: "expirationDate")
        identifier = jsonDictionary.json(atKeyPath: "identifier")
        lastLogin = jsonDictionary.json(atKeyPath: "lastLogin")
        loggedOutDate = jsonDictionary.json(atKeyPath: "loggedOutDate")
        updated = jsonDictionary.json(atKeyPath: "updated")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["id"] = id
        if let created = created?.encode() {
            dictionary["created"] = created
        }
        if let customer = customer?.encode() {
            dictionary["customer"] = customer
        }
        if let customerId = customerId?.encode() {
            dictionary["customerId"] = customerId
        }
        if let data = data {
            dictionary["data"] = data
        }
        if let deactivateDate = deactivateDate?.encode() {
            dictionary["deactivateDate"] = deactivateDate
        }
        if let description = description {
            dictionary["description"] = description
        }
        if let deviceType = deviceType?.encode() {
            dictionary["deviceType"] = deviceType
        }
        if let expirationDate = expirationDate?.encode() {
            dictionary["expirationDate"] = expirationDate
        }
        if let identifier = identifier {
            dictionary["identifier"] = identifier
        }
        if let lastLogin = lastLogin?.encode() {
            dictionary["lastLogin"] = lastLogin
        }
        if let loggedOutDate = loggedOutDate?.encode() {
            dictionary["loggedOutDate"] = loggedOutDate
        }
        if let updated = updated?.encode() {
            dictionary["updated"] = updated
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
