//
//  ContentView.swift
//  Playground-016-WeSplit
//
//  Created by Deren Bozer on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    
    /// Example of 1 way binding
    @State var tapCount = 0
    
    /// Example of 2 way binding
    @State private var name = ""
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack {
            Form {
                /// Example of 1 way binding
                Section {
                    Button("Count: \(tapCount)") {
                        self.tapCount += 1
                    }
                }
                
                /// Example of 2 way binding
                Section {
                    TextField("Enter your name", text: $name)
                    name == "" ? Text("Hello User !") : Text("Hello \(name) !")
                }
                
                Section {
                    Picker("Select your student:", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section {
                    ForEach(1..<21) {
                        Text("Hello \($0)")
                    }
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
