//
//  UserModel.swift
//  ChatApp
//
//  Created by Sreekutty Maya on 28/01/2025.
//

import Combine
import Foundation

class UserModel: ObservableObject {
    let userID = UUID()
    @Published var username = ""
}
