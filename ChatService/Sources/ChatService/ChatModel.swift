//
//  File.swift
//  
//
//  Created by Sreekutty Maya on 28/01/2025.
//

import Foundation

struct SubmittedChatMessage: Decodable {
    let message: String
    let user: String
    let userID: UUID
}

struct ReceivingChatMessage: Encodable, Identifiable {
    let date = Date()
    let id = UUID()
    let message: String
    let user: String
    let userID: UUID
}
