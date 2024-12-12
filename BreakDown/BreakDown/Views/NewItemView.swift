//
//  NewItemView.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 50)
            
            Form {
                // name
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                // due date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                // button
                BDButton(title: "Save", background: .blue) {
                    viewModel.save()
                }
                    .padding()
            }
        }
    }
}

#Preview {
    NewItemView()
}
