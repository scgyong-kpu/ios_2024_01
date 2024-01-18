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
    static let cols = 3
    static let rows = 6
    
    @Published var cards = [Card]()
    
    var openCardIndex: Int?
    
    init() {
        let max = Self.cols * Self.rows / 2
        for n in 1...max {
            cards.append(Card(number: n, open: false))
            cards.append(Card(number: n, open: false))
        }
    }
    func card(row: Int, col: Int) -> Card {
        let index = row * Self.cols + col
        return cards[index]
    }
    func toggle(row: Int, col: Int) {
        let index = row * Self.cols + col
        if index == openCardIndex {
            return
        }
        if let oci = openCardIndex {
            if cards[oci].number == cards[index].number {
                cards[oci].open = nil
                cards[index].open = nil
                openCardIndex = nil
                return
            }
            cards[oci].open = false
        }
        cards[index].open = true
        openCardIndex = index
    }
}


