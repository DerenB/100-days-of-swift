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
    // Includes a computed property
    // Any time the array changes, the function is called
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    // Key for encoding to data
    let itemsKey: String = "items_list"
    
    // Initializer
    init() {
        getItems()
    }
    
    // Appends the initial items to Data Array
    func getItems() {
//        let newItems = [
//            ItemModel(title: "This is the 1st title", isComplete: false),
//            ItemModel(title: "This is the 2nd title", isComplete: true),
//            ItemModel(title: "This is the 3rd title", isComplete: false)
//        ]
//        items.append(contentsOf: newItems)
        
        
        // Grabs the data if it exists
        // Converts data into an array of itemModels
        // Divide LET items with a comma
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        
        self.items = savedItems
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
    
    // Function for saving items
    // Better to use "User Default" when in a class
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
