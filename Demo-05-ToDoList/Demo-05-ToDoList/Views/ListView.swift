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
    @State var items: [String] = [
        "This is the first item",
        "This is the second",
        "This is the last item"
    ]
    
    var body: some View {
        // List of ToDo Items
        List {
            // Loops through the array to display list items
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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


