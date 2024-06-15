//
//  ItemModel.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/14/24.
//

import Foundation

// Item Model with a randomly generated ID string
struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isComplete: Bool
}
