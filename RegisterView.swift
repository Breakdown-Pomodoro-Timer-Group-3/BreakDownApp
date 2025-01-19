//
//  RegisterView.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            //header
            HeaderView(title: "Register", angle: -15, background: Color(red: 0.1058, green: 0.1058, blue: 0.1058))
            
            Form {
                TextField("Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                BDButton(
                    title: "Create Account",
                     background: .green
                ) {
                    viewModel.register()
                }
            }
            .scrollContentBackground(.hidden)
            .offset(y: -100)
            
            Spacer()
        }
        .background(Color(red: 0.1843, green: 0.1843, blue: 0.1843))
    }
}

#Preview {
    RegisterView()
}
