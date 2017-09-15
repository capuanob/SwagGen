//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class CarParkOccupancy: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var bays: [Bay]?

    public var carParkDetailsUrl: String?

    public var id: String?

    public var name: String?

    public init(bays: [Bay]? = nil, carParkDetailsUrl: String? = nil, id: String? = nil, name: String? = nil) {
        self.bays = bays
        self.carParkDetailsUrl = carParkDetailsUrl
        self.id = id
        self.name = name
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        bays = jsonDictionary.json(atKeyPath: "bays")
        carParkDetailsUrl = jsonDictionary.json(atKeyPath: "carParkDetailsUrl")
        id = jsonDictionary.json(atKeyPath: "id")
        name = jsonDictionary.json(atKeyPath: "name")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let bays = bays?.encode() {
            dictionary["bays"] = bays
        }
        if let carParkDetailsUrl = carParkDetailsUrl {
            dictionary["carParkDetailsUrl"] = carParkDetailsUrl
        }
        if let id = id {
            dictionary["id"] = id
        }
        if let name = name {
            dictionary["name"] = name
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
