//
//  HeaderView.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/12/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let angle: Double
    let background: Color
    
    //Color(red: 0.1058, green: 0.1058, blue: 0.1058)
    
    
    var body: some View {
        // header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .bold()
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)
    }
    
}

#Preview {
    HeaderView(title: "Title", angle: 15, background: Color(red: 0.1058, green: 0.1058, blue: 0.1058))
}
