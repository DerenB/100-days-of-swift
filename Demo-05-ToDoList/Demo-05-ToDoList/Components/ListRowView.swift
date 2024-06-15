//
//  ListRowView.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/13/24.
//
//  Component for a single List item

import SwiftUI

var item1 = ItemModel(title: "Cheese", isComplete: false)

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isComplete ? "checkmark.circle" : "circle")
                .foregroundColor(item.isComplete ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
        
    }
}

#Preview {
    NavigationView {
        ListRowView(item: item1)
    }.previewLayout(.sizeThatFits)
}
