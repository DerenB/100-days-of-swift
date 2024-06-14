//
//  ListRowView.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/13/24.
//
//  Component for a single List item

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
