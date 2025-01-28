//
//  ChatScreen.swift
//  ChatApp
//
//  Created by Sreekutty Maya on 28/01/2025.
//

import SwiftUI

struct ChatScreenView: View {
    @StateObject private var model = ChatConnectionService()
    @State private var message = ""
    @EnvironmentObject private var user: UserModel

    private func onAppear() {
        model.connect(userName: user.username, userId: user.userID)
    }
    
    private func onDisappear() {
        model.disconnect()
    }
    
    private func onCommit() {
        if !message.isEmpty {
            model.send(text: message)
            message = ""
        }
    }
    var body: some View {
        ScrollView {
            ScrollViewReader { proxy in
                LazyVStack(spacing: 8) {
                    ForEach(model.messages) { message in
                        ChatMessageRow(message: message, isUser: message.userID == user.userID)
                            .id(message.id)
                    }
                }
                // etc.
            }
        }

            // Message field.
            HStack {
                TextField("Message", text: $message, onEditingChanged: { _ in }, onCommit: onCommit)
                    .padding(10)
                    .background(Color.secondary.opacity(0.2))
                    .cornerRadius(5)
                
                Button(action: onCommit) { // 3
                    Image(systemName: "arrowshape.turn.up.right")
                        .font(.system(size: 20))
                }
                .padding()
                .disabled(message.isEmpty) // 4
            }
            
            .padding()
            .onAppear(perform: onAppear)
             .onDisappear(perform: onDisappear)

        }
}

#Preview {
    ChatScreenView()
}
