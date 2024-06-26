//
//  ItemModel.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/14/24.
//
//  Model for creating a List item

import Foundation

// Item Model with a randomly generated ID string
// Immutable Struct
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isComplete: Bool
    
    // Initializer
    init(id: String = UUID().uuidString, title: String, isComplete: Bool) {
        self.id = id
        self.title = title
        self.isComplete = isComplete
    }
    
    // Update Completion
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isComplete: !isComplete)
    }
}
