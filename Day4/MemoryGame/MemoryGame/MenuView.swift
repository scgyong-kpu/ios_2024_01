//
//  MenuView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    GameView()
                } label: {
                    Text("Game")
                }
            }
            .navigationTitle("Memory Game")
        }
    }
}

#Preview {
    MenuView()
}
