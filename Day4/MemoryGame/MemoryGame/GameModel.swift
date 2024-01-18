//
//  GameModel.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import Foundation

struct Card {
    let number: Int
    var open: Bool? // nil == removed
}

class GameModel: ObservableObject {
    static let cols = 2
    static let rows = 3
    
    @Published var cards = [Card]()
    
    init() {
        let max = Self.cols * Self.rows / 2
        for n in 1...max {
            cards.append(Card(number: n, open: true))
            cards.append(Card(number: n, open: false))
        }
    }
    func card(row: Int, col: Int) -> Card {
        let index = row * Self.cols + col
        return cards[index]
    }
    func toggle(row: Int, col: Int) {
        let index = row * Self.cols + col
        let card = cards[index]
        if let open = card.open {
            cards[index].open = !open
        }
    }
}


