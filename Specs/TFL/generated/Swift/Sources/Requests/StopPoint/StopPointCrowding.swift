//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.StopPoint {

    public enum StopPointCrowding {

        public static let service = APIService<Response>(id: "StopPoint_Crowding", tag: "StopPoint", method: "GET", path: "/StopPoint/{id}/Crowding/{line}", hasBody: false)

        /** The direction of travel. Can be inbound or outbound. */
        public enum Direction: String, Codable {
            case inbound = "inbound"
            case outbound = "outbound"
            case all = "all"

            public static let cases: [Direction] = [
              .inbound,
              .outbound,
              .all,
            ]
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The Naptan id of the stop */
                public var id: String

                /** A particular line e.g. victoria, circle, northern etc. */
                public var line: String

                /** The direction of travel. Can be inbound or outbound. */
                public var direction: Direction

                public init(id: String, line: String, direction: Direction) {
                    self.id = id
                    self.line = line
                    self.direction = direction
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: StopPointCrowding.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: String, line: String, direction: Direction) {
                let options = Options(id: id, line: line, direction: direction)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)").replacingOccurrences(of: "{" + "line" + "}", with: "\(self.options.line)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                params["direction"] = options.direction.encode()
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [StopPoint]

            /** OK */
            case status200([StopPoint])

            public var success: [StopPoint]? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode([StopPoint].self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
