//
//  ContentView.swift
//  Demo4-WarCardGame
//
//  Created by Deren Bozer on 6/7/24.
//

import SwiftUI

struct ContentView: View {
    
    // Card Variables
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    // Card Variables
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        // Z Stack for Background Image
        ZStack {
            // Background Image
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            // VStack for all elements
            VStack {
                // Logo
                Spacer()
                Image("logo")
                
                // Cards
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                // Button
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                // Player/Score
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
    
    func deal() {
        // Randomize the player card
        let playerRandom = Int.random(in: 2...14)
        playerCard = "card" + String(playerRandom)
        
        // Randomize the CPU card
        let cpuRandom = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuRandom)
        
        // Update Score
        if playerRandom > cpuRandom {
            playerScore += 1
        } else if cpuRandom > playerRandom {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}

