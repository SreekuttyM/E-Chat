//
//  ContentView.swift
//  ChatApp
//
//  Created by Sreekutty Maya on 28/01/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var userInfo = UserModel() // 1

    var body: some View {
        NavigationView {
            SettingsScreenView()
        }
        .environmentObject(userInfo)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
