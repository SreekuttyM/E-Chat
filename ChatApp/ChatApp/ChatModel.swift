//
//  ChatModel.swift
//  ChatApp
//
//  Created by Sreekutty Maya on 28/01/2025.
//

import Foundation

struct SubmittedChatMessage: Encodable {
    let message: String
    let user: String
    let userID: UUID
}

struct ReceivingChatMessage: Decodable, Identifiable {
    var date = Date()
    var id = UUID()
    let message: String
    let user: String
    let userID: UUID
}
