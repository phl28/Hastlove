//
//  Story.swift
//  Hastlove
//
//  Created by Adrian Lui on 07/10/2024.
//

import Foundation

struct Story: Decodable, Identifiable {
    let id: UUID
    let createdAt: Date
    let coupleId: UUID
    let createdBy: UUID
    let content: String
    let imageUrl: String
}
