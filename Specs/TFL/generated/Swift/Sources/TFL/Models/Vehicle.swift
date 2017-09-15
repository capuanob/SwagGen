//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Vehicle: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var type: String?

    public init(type: String? = nil) {
        self.type = type
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        type = jsonDictionary.json(atKeyPath: "type")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let type = type {
            dictionary["type"] = type
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
