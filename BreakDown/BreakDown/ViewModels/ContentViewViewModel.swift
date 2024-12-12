//
//  ContentViewViewModel.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import Foundation
import FirebaseAuth

class ContentViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener {[weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isLoggedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
