//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var model = GameModel()

    var body: some View {
        VStack {
            GridStackView(columns: GameModel.cols, rows: GameModel.rows) { row, col in
                CardView(
                    prefix: "f",
                    card: model.card(row: row, col: col)
                )
                .onTapGesture {
                    model.toggle(row: row, col: col)
                }
            }
            HStack {
                Button {
                    model.start()
                } label: {
                    Text("Restart")
                }
            }
        }
    }
}

#Preview {
    GameView()
}
