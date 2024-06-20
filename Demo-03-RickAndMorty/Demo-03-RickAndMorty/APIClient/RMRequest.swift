//
//  RMRequest.swift
//  Demo-03-RickAndMorty
//
//  Created by Deren Bozer on 6/11/24.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {

    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: [String]
    
    /// Query arguements for API, if any
    private let queryParameters: [URLQueryItem]
    
    // Creates the optional URL string
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        // Checks if there are path components to add
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        // Checks if there query parameters to add
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & Constructed API URL
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// HTTP Request
    public let httpMethod = "GET"
    
    
    public init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
