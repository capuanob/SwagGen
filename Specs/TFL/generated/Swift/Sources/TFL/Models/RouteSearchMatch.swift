//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class RouteSearchMatch: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var id: String?

    public var lat: Double?

    public var lineId: String?

    public var lineName: String?

    public var lineRouteSection: [LineRouteSection]?

    public var lon: Double?

    public var matchedRouteSections: [MatchedRouteSections]?

    public var matchedStops: [MatchedStop]?

    public var mode: String?

    public var name: String?

    public var url: String?

    public init(id: String? = nil, lat: Double? = nil, lineId: String? = nil, lineName: String? = nil, lineRouteSection: [LineRouteSection]? = nil, lon: Double? = nil, matchedRouteSections: [MatchedRouteSections]? = nil, matchedStops: [MatchedStop]? = nil, mode: String? = nil, name: String? = nil, url: String? = nil) {
        self.id = id
        self.lat = lat
        self.lineId = lineId
        self.lineName = lineName
        self.lineRouteSection = lineRouteSection
        self.lon = lon
        self.matchedRouteSections = matchedRouteSections
        self.matchedStops = matchedStops
        self.mode = mode
        self.name = name
        self.url = url
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        id = jsonDictionary.json(atKeyPath: "id")
        lat = jsonDictionary.json(atKeyPath: "lat")
        lineId = jsonDictionary.json(atKeyPath: "lineId")
        lineName = jsonDictionary.json(atKeyPath: "lineName")
        lineRouteSection = jsonDictionary.json(atKeyPath: "lineRouteSection")
        lon = jsonDictionary.json(atKeyPath: "lon")
        matchedRouteSections = jsonDictionary.json(atKeyPath: "matchedRouteSections")
        matchedStops = jsonDictionary.json(atKeyPath: "matchedStops")
        mode = jsonDictionary.json(atKeyPath: "mode")
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
        if let lineId = lineId {
            dictionary["lineId"] = lineId
        }
        if let lineName = lineName {
            dictionary["lineName"] = lineName
        }
        if let lineRouteSection = lineRouteSection?.encode() {
            dictionary["lineRouteSection"] = lineRouteSection
        }
        if let lon = lon {
            dictionary["lon"] = lon
        }
        if let matchedRouteSections = matchedRouteSections?.encode() {
            dictionary["matchedRouteSections"] = matchedRouteSections
        }
        if let matchedStops = matchedStops?.encode() {
            dictionary["matchedStops"] = matchedStops
        }
        if let mode = mode {
            dictionary["mode"] = mode
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
