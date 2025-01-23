//
//  ProfileView.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                    if let user = viewModel.user {
                        Image(systemName: "person.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color.blue)
                            .frame(width: 125, height: 125)
                            .padding()
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text(user.name)
                            }
                            HStack {
                                Text("Email :")
                                    .bold()
                                Text(user.email)
                            }
                            HStack {
                                Text("Member Since :")
                                    .bold()
                                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                            }
                        }
                        .padding()
                        
                        Button("Sign Out") {
                            viewModel.logOut()
                        }
                        .tint(Color.red)
                        .padding()
                        
                        Spacer()
                    } else {
                        Text("Loading Profile...")
                    }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

#Preview {
    ProfileView()
}
