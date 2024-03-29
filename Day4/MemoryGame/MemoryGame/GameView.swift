//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct GameView: View {
    let prefix: String
    @ObservedObject var model = GameModel()
    @State var showsRetryAlert = false
    @Environment(\.presentationMode) var present
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
                    prefix: prefix,
                    card: model.card(row: row, col: col)
                )
                .onTapGesture {
                    model.toggle(row: row, col: col)
                    if model.over {
                        showsRetryAlert = true
                    }
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button {
                    present.wrappedValue.dismiss()
                } label: {
                    Text("Back")
                        .font(.title)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(lineWidth: 5)
                        )
                        .shadow(color: .gray, radius: 4, x: 3, y: 3)
                }
                Spacer()
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
                Spacer()
            }
            Spacer()
        }
        .background(
            LinearGradient(
                colors: [ .white, .blue.opacity(0.3) ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
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
        //.navigationBarHidden(true)
        .toolbar(.hidden)
    }
}

#Preview {
    GameView(prefix: "z")
}
