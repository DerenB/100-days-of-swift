//
//  RMEndpoint.swift
//  Demo-03-RickAndMorty
//
//  Created by Deren Bozer on 6/11/24.
//

import Foundation


/// Represents unique API endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
