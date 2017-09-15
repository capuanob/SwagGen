//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class SearchMatch: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var id: String?

    public var lat: Double?

    public var lon: Double?

    public var name: String?

    public var url: String?

    public init(id: String? = nil, lat: Double? = nil, lon: Double? = nil, name: String? = nil, url: String? = nil) {
        self.id = id
        self.lat = lat
        self.lon = lon
        self.name = name
        self.url = url
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        id = jsonDictionary.json(atKeyPath: "id")
        lat = jsonDictionary.json(atKeyPath: "lat")
        lon = jsonDictionary.json(atKeyPath: "lon")
        name = jsonDictionary.json(atKeyPath: "name")
        url = jsonDictionary.json(atKeyPath: "url")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let id = id {
            dictionary["id"] = id
        }
        if let lat = lat {
            dictionary["lat"] = lat
        }
        if let lon = lon {
            dictionary["lon"] = lon
        }
        if let name = name {
            dictionary["name"] = name
        }
        if let url = url {
            dictionary["url"] = url
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
