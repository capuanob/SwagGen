//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class UserRating: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** The id of the item rated. */
    public var itemId: String

    /** The rating out of 10 */
    public var rating: Int

    public init(itemId: String, rating: Int) {
        self.itemId = itemId
        self.rating = rating
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        itemId = try jsonDictionary.json(atKeyPath: "itemId")
        rating = try jsonDictionary.json(atKeyPath: "rating")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["itemId"] = itemId
        dictionary["rating"] = rating
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
