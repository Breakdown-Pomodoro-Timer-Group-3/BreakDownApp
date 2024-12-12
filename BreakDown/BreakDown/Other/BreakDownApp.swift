//
//  BreakDownApp.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import SwiftUI
import FirebaseCore

@main
struct BreakDownApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
