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
            List {
                ForEach(prefixes, id: \.self) { prefix in
                    NavigationLink {
                        GameView(prefix: prefix)
                    } label: {
                        Text("Game \(prefix)")
                    }
                }
            }
            .navigationTitle("Memory Game")
        }
    }
}

#Preview {
    MenuView()
}
