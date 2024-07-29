//
//  ExampleButtons.swift
//  Day-020-GuessTheFlag
//
//  Created by Deren Bozer on 7/29/24.
//

import SwiftUI

struct ExampleButtons: View {
    var body: some View {
        VStack(spacing: 20) {
            /// Basic Button
            Button("Delete Something") {
                print("Now Deleting")
            }
            
            /// Basic Button, calls function
            Button("Delete Something", action: executeDelete)
            
            /// Basic Button, role styling, calls function
            Button("Delete Something", role: .destructive, action: executeDelete)
            
            /// Bordered Style
            Button("Delete Something", action: executeDelete)
                .buttonStyle(.bordered)
            
            /// Prominent Bordered Style, with a tint
            Button("Delete Something", action: executeDelete)
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            
            /// Prominent Bordered Style
            Button("Delete Something", role: .destructive, action: executeDelete)
                .buttonStyle(.borderedProminent)
            
            Button {
                print("Now Deleting")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
        }
    }
    
    func executeDelete() {
        print("Now Deleting")
    }
    
    
}

#Preview {
    ExampleButtons()
}
