//
//  Demo_05_ToDoListApp.swift
//  Demo-05-ToDoList
//
//  Created by Deren Bozer on 6/13/24.
//

import SwiftUI

@main
struct Demo_05_ToDoListApp: App {
    
    // Environment Variables
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
