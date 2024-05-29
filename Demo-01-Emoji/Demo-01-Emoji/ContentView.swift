//
//  ContentView.swift
//  Demo-01-Emoji
//
//  Created by Deren Bozer on 5/29/24.
//

import SwiftUI

// List of Emojis
enum Emoji: String, CaseIterable {
    case 😂, 😎, 😭, 😤
}

struct ContentView: View {
    // Reference to emoji list
    @State var selection: Emoji = .😂
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) {
                        emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Picker")
            .padding()
        }
    }
}

// Renders the iPhone Preview
#Preview {
    ContentView()
}
