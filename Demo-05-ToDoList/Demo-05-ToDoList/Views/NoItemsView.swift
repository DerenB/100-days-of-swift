//
//  NoItemsView.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/15/24.
//
//  View for when the List is empty

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and add a bunch of items to your todo list!")
                NavigationLink(
                    destination: AddViiew(),
                    label: {
                        Text("Add Something 🥳")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    }
                )
            } // End of VStack
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        } // End of Scroll View
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    } // End of Body
    
    
    // Function for the animation
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.easeInOut) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView {
        NoItemsView()
            .navigationTitle("Title")
    }
    
}
