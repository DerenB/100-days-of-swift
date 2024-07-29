//
//  ExampleGradient.swift
//  Day-020-GuessTheFlag
//
//  Created by Deren Bozer on 7/29/24.
//

import SwiftUI

struct ExampleGradient: View {
    var body: some View {
        ZStack {
            Text("Your content")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.white)
                .background(.red.gradient)
        }
    }
}

#Preview {
    ExampleGradient()
}
