//
//  User.swift
//  BreakDown
//
//  Created by Alejandro Castillo on 11/8/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
