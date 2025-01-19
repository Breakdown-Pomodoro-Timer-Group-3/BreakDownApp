//
//  BDButton.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/12/24.
//

import SwiftUI

struct BDButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    BDButton(title: "Title", background: .blue) {
        //Action
    }
}
