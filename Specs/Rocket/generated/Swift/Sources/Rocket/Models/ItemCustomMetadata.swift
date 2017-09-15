//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

/** Custom metadata associated with an item. */
public class ItemCustomMetadata: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** The name of the custom metadata. */
    public var name: String

    /** The value of the custom metadata. */
    public var value: String

    public init(name: String, value: String) {
        self.name = name
        self.value = value
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        name = try jsonDictionary.json(atKeyPath: "name")
        value = try jsonDictionary.json(atKeyPath: "value")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["name"] = name
        dictionary["value"] = value
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
