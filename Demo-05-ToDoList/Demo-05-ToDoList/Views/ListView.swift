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
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else {
                // List of ToDo Items
                List {
                    // Loops through the array to display list items
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
            }
        } // End of Z Stack
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
    .environmentObject(ListViewModel())
}


