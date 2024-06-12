//
//  RMService.swift
//  Demo-03-RickAndMorty
//
//  Created by Deren Bozer on 6/11/24.
//
//  Responsible for making the API calls

import Foundation


/// Primary API Service object to get Rick and Morty Data
final class RMService {
    
    
    /// Shared Singleton instance
    static let shared = RMService()
    
    /// Privatized Constructor
    private init() {}
    
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
