//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var model = GameModel()
    @State var showsRetryAlert = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Memory Game")
                    .font(.largeTitle)
                Spacer()
                Text("Flips: \(model.flips)")
            }
            .padding(.horizontal)
            Spacer()
            GridStackView(columns: GameModel.cols, rows: GameModel.rows) { row, col in
                CardView(
                    prefix: "f",
                    card: model.card(row: row, col: col)
                )
                .onTapGesture {
                    model.toggle(row: row, col: col)
                }
            }
            Spacer()
            HStack {
                Button {
                    //model.start()
                    showsRetryAlert = true
                } label: {
                    Text("Restart")
                        .font(.title)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(lineWidth: 5)
                        )
                        .shadow(color: .gray, radius: 4, x: 3, y: 3)
                }
            }
            Spacer()
        }
        .alert(isPresented: $showsRetryAlert) {
            Alert(
                title: Text("Restart"),
                message: Text("Do you really want to restart this game?"),
                primaryButton: .destructive(Text("Restart")) {
                    model.start()
                },
                secondaryButton: .cancel()
            )
        }
    }
}

#Preview {
    GameView()
}
