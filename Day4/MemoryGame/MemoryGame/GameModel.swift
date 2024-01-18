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

struct GameModel {
    static let cols = 2
    static let rows = 3
    
    var cards = [Card]()
    //var cards: [Card] = []
    
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
}


