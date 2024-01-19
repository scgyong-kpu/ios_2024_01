//
//  MenuView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct MenuView: View {
    let prefixes = [ "f", "t" ]
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ForEach(prefixes, id: \.self) { prefix in
                    MenuItemView(prefix: prefix)
                }
            }
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
            Image("\(prefix)_back")
            Spacer()
            NavigationLink {
                GameView(prefix: prefix)
            } label: {
                Text("Game \(prefix)")
            }
        }
        .frame(height: 300)
        .background(
            ZStack {
//                Color.blue
//                    .clipShape(RoundedRectangle(cornerRadius: 30))
//                    .padding(20)
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .padding(20)
                Image("\(prefix)_bg")
                    .resizable()
                .padding(40)
            }
        )
    }
}
