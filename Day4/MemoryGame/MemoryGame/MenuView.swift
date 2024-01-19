//
//  MenuView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct MenuView: View {
    let prefixes = [ "f", "t", "z" ]
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ForEach(prefixes, id: \.self) { prefix in
                    MenuItemView(prefix: prefix)
                }
            }
            .background(
                LinearGradient(
                    colors: [.white, .orange.opacity(0.5) ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .navigationTitle("Memory Game")
        }
    }
}

#Preview {
    MenuView()
}

struct MenuItemView: View {
    let prefix: String
    var body: some View {
        HStack {
            Spacer()
            Image("\(prefix)_back")
            Spacer()
            NavigationLink {
                GameView(prefix: prefix)
            } label: {
                Text("Start Game")
                    .padding()
                    .background(
                        Capsule()
                            .stroke(lineWidth: 5)
                    )
            }
            Spacer()
        }
        .frame(height: 300)
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .padding(20)
                Image("\(prefix)_bg")
                    .resizable()
                .padding(40)
            }
            .rotation3DEffect(
                .degrees(30),
                axis: (x: 0.0, y: -1.0, z: 0.0)
            )
            .opacity(0.3)
        )
    }
}
