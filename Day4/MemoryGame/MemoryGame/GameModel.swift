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
    static let cols = 4
    static let rows = 5
    
    @Published var cards = [Card]()
    @Published var flips = 0

    var openCardIndex: Int?
    private var pairCount = 0
    
    var over: Bool { pairCount == 0 }
    
    init() {
        start()
    }
    func start() {
        cards = []
        let max = Self.cols * Self.rows / 2
        for n in 1...max {
            cards.append(Card(number: n, open: false))
            cards.append(Card(number: n, open: false))
        }
//        cards.shuffle()
        openCardIndex = nil
        flips = 0
        pairCount = max
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
                pairCount -= 1
                return
            }
            cards[oci].open = false
        }
        cards[index].open = true
        openCardIndex = index
        flips += 1
    }
}


