//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class DbGeography: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var geography: DbGeographyWellKnownValue?

    public init(geography: DbGeographyWellKnownValue? = nil) {
        self.geography = geography
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        geography = jsonDictionary.json(atKeyPath: "geography")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let geography = geography?.encode() {
            dictionary["geography"] = geography
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
