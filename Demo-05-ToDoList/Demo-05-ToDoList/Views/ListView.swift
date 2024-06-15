//
//  ListView.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/13/24.
//
//  Main View of the List items

import SwiftUI

struct ListView: View {
    
    // Array for List items
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the 1st title", isComplete: false),
        ItemModel(title: "This is the 2nd title", isComplete: true),
        ItemModel(title: "This is the 3rd title", isComplete: false)
    ]
    
    var body: some View {
        // List of ToDo Items
        List {
            // Loops through the array to display list items
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddViiew())
        )
    } // End of Body
}

#Preview {
    NavigationView {
        ListView()
    }
}


