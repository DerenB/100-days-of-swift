//
//  ListViewModel.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/14/24.
//
//  ViewModel for using CRUD actions on the data list

import Foundation

class ListViewModel: ObservableObject {
    
    // Data List
    @Published var items: [ItemModel] = []
    
    // Initializer
    init() {
        getItems()
    }
    
    // Appends the initial items to Data Array
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the 1st title", isComplete: false),
            ItemModel(title: "This is the 2nd title", isComplete: true),
            ItemModel(title: "This is the 3rd title", isComplete: false)
        ]
        
        items.append(contentsOf: newItems)
    }
    
    // Function for Deleting item
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    // Function for Moving an Item
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    // Function for Adding an item
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isComplete: false)
        items.append(newItem)
    }
    
    // Function for updating completion status
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
