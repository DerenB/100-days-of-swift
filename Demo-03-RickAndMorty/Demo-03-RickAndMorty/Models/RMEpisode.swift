//
//  RMEpisode.swift
//  Demo-03-RickAndMorty
//
//  Created by Deren Bozer on 6/6/24.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
