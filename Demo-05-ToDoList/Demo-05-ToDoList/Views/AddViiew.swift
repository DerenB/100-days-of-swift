//
//  AddViiew.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/13/24.
//
//  Page for adding items to the list

import SwiftUI

struct AddViiew: View {
    var body: some View {
        
        // Variable for the text field input
        @State var textFieldText: String = ""
        
        // Background color variable for the text field input
        let bgColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
        
        // Scrollable view
        ScrollView {
            VStack {
                // Text input field
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(bgColor))
                    .cornerRadius(10)
                
                // Button for saving
                Button(action: {
                    /// TODO function
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14) // End of VStack
        }
        .navigationTitle("Add an Item 🖊️")
    } // End of Body
}

#Preview {
    NavigationView {
        AddViiew()
    }
}
