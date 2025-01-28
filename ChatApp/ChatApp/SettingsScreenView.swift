//
//  SettingsScreenView.swift
//  ChatApp
//
//  Created by Sreekutty Maya on 28/01/2025.
//

import SwiftUI
struct SettingsScreenView: View {
    @EnvironmentObject private var userInfo: UserModel // 1
    
    private var isUsernameValid: Bool {
        !userInfo.username.trimmingCharacters(in: .whitespaces).isEmpty // 2
    }
    
    var body: some View {
        Form {
            Section(header: Text("Username")) {
                TextField("E.g. John Applesheed", text: $userInfo.username)

                NavigationLink("Continue", destination: ChatScreenView())
                    .disabled(!isUsernameValid)
            }
        }
        .navigationTitle("Settings")
    }
}
#Preview {
    SettingsScreenView()
}
