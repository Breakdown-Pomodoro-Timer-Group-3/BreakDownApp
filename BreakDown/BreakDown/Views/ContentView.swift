//
//  ContentView.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewViewModel()
    
    var body: some View {
        if viewModel.isLoggedIn,
           !viewModel.currentUserId.isEmpty {
            accountView
        }
        else {
            LoginView()
        }
    }
    
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("", systemImage: "checklist")
                }
            
            TimerView()
                .tabItem {
                    Label("", systemImage: "timer")
                }
            
            ProfileView()
                .tabItem {
                    Label("", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
