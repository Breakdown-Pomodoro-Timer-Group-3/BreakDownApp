//
//  TimerView.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/21/24.
//

import SwiftUI

struct TimerView: View {
    @StateObject var viewModel = TimerViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Timer")
        }
    }
}

#Preview {
    TimerView()
}
