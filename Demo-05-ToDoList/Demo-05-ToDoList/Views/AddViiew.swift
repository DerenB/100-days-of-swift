//
//  AddViiew.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/13/24.
//
//  Page for adding items to the list

import SwiftUI

struct AddViiew: View {
    
    // Environment variable for the list
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    
    // Variable for the text field input
    @State var textFieldText: String = ""
    
    // Variables for Error Alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
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
                Button(action: saveButtonPressed, label: {
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
        .alert(isPresented: $showAlert, content: getAlert)
    } // End of Body
    
    // Function for adding an item when button pressed
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    // Function for checking input length
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long 😨😰"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    // Function for Displaying the error alert
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView {
        AddViiew()
    }
    .environmentObject(ListViewModel())
}
