//
//  LoginView.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "BreakDown", angle: 15, background: Color(red: 0.1058, green: 0.1058, blue: 0.1058))
                
                // login form
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                    //.foregroundColor(.white)
                    //.listRowBackground(Color(red: 0.231, green: 0.243, blue: 0.243))
                    
                    SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    //.foregroundColor(.white)
                    //.listRowBackground(Color(red: 0.243, green: 0.243, blue: 0.243))
                    
                    BDButton(
                        title: "Log in",
                         background: .blue
                    ) {
                        viewModel.login()
                    }
                    //.listRowBackground(Color(red: 0.243, green: 0.243, blue: 0.243))
                }
                .scrollContentBackground(.hidden)
                .offset(y: -50)
                
                
                // create account
                VStack {
                    Text("First time signing in?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                Spacer()
            }
            .background(Color(red: 0.1843, green: 0.1843, blue: 0.1843))
        }
    }
}

#Preview {
    LoginView()
}
