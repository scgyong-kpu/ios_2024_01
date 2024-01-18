//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        VStack {
            GridStackView(columns: 3, rows: 5) { row, col in
                CardView(prefix: "f", number: row+col+1, open: row % 2 == 0)
            }
        }
        .padding()
    }
}

#Preview {
    GameView()
}
