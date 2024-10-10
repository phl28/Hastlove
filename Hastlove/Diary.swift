//
//  Diary.swift
//  Hastlove
//
//  Created by Adrian Lui on 07/10/2024.
//

import Foundation

struct Diary: Decodable, Identifiable {
    let id: UUID
    let createdAt: Date
    let userId: UUID
    let content: String
    let visibleToPartner: Bool
}
