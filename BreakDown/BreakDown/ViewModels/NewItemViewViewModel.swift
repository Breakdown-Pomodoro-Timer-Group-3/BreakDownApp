//
//  NewItemViewViewModel.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()

    
    init() {
        
    }
    
    func save() {
        
    }
}
