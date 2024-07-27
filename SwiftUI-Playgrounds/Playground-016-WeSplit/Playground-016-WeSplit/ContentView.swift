//
//  ContentView.swift
//  Playground-016-WeSplit
//
//  Created by Deren Bozer on 7/25/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Button("Count: \(tapCount)") {
                        self.tapCount += 1
                    }
                }
                Section {
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                }
                
                Section {
                    Text("Hello1")
                    Text("Hello2")
                    Text("Hello3")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
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
