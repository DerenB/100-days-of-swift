//
//  ContentView.swift
//  temp1
//
//  Created by Deren Bozer on 5/31/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0, green: 0, blue: 0)
                .ignoresSafeArea()
            
            VStack {
                
                Image("cowboy")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Text("See you Space Cowboy...")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.orange)
                    .italic()
            }
        }
    }
}

#Preview {
    ContentView()
}
