//
//  LoginViewViewModel.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else { return }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              !password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            errorMessage = "Please enter a valid email and password."
            return false
        }
        
        guard email.contains("@"), email.contains(".") else {
            errorMessage = "Please enter a vain email."
            return false
        }
        
        return true
    }
}
