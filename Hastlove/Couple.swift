//
//  Couple.swift
//  Hastlove
//
//  Created by Adrian Lui on 07/10/2024.
//

import Foundation

struct Couple: Decodable, Identifiable {
    let id: UUID
    let createdAt: Date
    let user1Id: UUID
    let user2Id: UUID
}
