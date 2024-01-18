//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct GameView: View {
    var model = GameModel()
    var body: some View {
        VStack {
            GridStackView(columns: GameModel.cols, rows: GameModel.rows) { row, col in
                CardView(prefix: "f", card: model.card(row: row, col: col))
            }
        }
        .padding()
    }
}

#Preview {
    GameView()
}
