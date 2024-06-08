//
//  ContentView.swift
//  Demo4-WarCardGame
//
//  Created by Deren Bozer on 6/7/24.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                
                // Button
                Spacer()
                Image("button")
                
                // Player/Score
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


/*
 
 // Main View
 ZStack {
     // Background cloth table
     Image("background-cloth")
     
     // Vertical Items
     VStack {
         // War Logo
         Spacer()
         Image("logo")
         
         // Card Items
         HStack {
             Spacer()
             Image("card2")
             Spacer()
             Image("card3")
             Spacer()
         }
         
         // Deal Button
         Spacer()
         Image("button")
         
         // Players
         Spacer()
         HStack {
             Spacer()
             Text("Player")
             Spacer()
             Text("CPU")
             Spacer()
         }
         .foregroundColor(.white)
         .font(.title)
         
         // Scores
         HStack {
             Spacer()
             Text("0")
             Spacer()
             Text("0")
             Spacer()
         }
         .foregroundColor(.white)
         .font(.title)
         
         Spacer()
     }
 }

 
 */
