//
//  ExampleFrostGlass.swift
//  Day-020-GuessTheFlag
//
//  Created by Deren Bozer on 7/29/24.
//

import SwiftUI

struct ExampleFrostGlass: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }

            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ExampleFrostGlass()
}
