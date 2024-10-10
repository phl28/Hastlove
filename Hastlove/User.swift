//
//  User.swift
//  Hastlove
//
//  Created by Adrian Lui on 07/10/2024.
//

import Foundation

struct User: Decodable, Identifiable {
    let id: UUID
    let createdAt: Date
    let username: String
    let fullName: String
    let partnerId: UUID
    let coupleId: UUID
}
