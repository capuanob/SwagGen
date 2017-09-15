//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Fare: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var cap: Double?

    public var cost: String?

    public var description: String?

    public var id: Int?

    public var mode: String?

    public var passengerType: String?

    public var ticketTime: String?

    public var ticketType: String?

    public var validFrom: Date?

    public var validUntil: Date?

    public var zone: String?

    public init(cap: Double? = nil, cost: String? = nil, description: String? = nil, id: Int? = nil, mode: String? = nil, passengerType: String? = nil, ticketTime: String? = nil, ticketType: String? = nil, validFrom: Date? = nil, validUntil: Date? = nil, zone: String? = nil) {
        self.cap = cap
        self.cost = cost
        self.description = description
        self.id = id
        self.mode = mode
        self.passengerType = passengerType
        self.ticketTime = ticketTime
        self.ticketType = ticketType
        self.validFrom = validFrom
        self.validUntil = validUntil
        self.zone = zone
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        cap = jsonDictionary.json(atKeyPath: "cap")
        cost = jsonDictionary.json(atKeyPath: "cost")
        description = jsonDictionary.json(atKeyPath: "description")
        id = jsonDictionary.json(atKeyPath: "id")
        mode = jsonDictionary.json(atKeyPath: "mode")
        passengerType = jsonDictionary.json(atKeyPath: "passengerType")
        ticketTime = jsonDictionary.json(atKeyPath: "ticketTime")
        ticketType = jsonDictionary.json(atKeyPath: "ticketType")
        validFrom = jsonDictionary.json(atKeyPath: "validFrom")
        validUntil = jsonDictionary.json(atKeyPath: "validUntil")
        zone = jsonDictionary.json(atKeyPath: "zone")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let cap = cap {
            dictionary["cap"] = cap
        }
        if let cost = cost {
            dictionary["cost"] = cost
        }
        if let description = description {
            dictionary["description"] = description
        }
        if let id = id {
            dictionary["id"] = id
        }
        if let mode = mode {
            dictionary["mode"] = mode
        }
        if let passengerType = passengerType {
            dictionary["passengerType"] = passengerType
        }
        if let ticketTime = ticketTime {
            dictionary["ticketTime"] = ticketTime
        }
        if let ticketType = ticketType {
            dictionary["ticketType"] = ticketType
        }
        if let validFrom = validFrom?.encode() {
            dictionary["validFrom"] = validFrom
        }
        if let validUntil = validUntil?.encode() {
            dictionary["validUntil"] = validUntil
        }
        if let zone = zone {
            dictionary["zone"] = zone
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
