//
//  CardView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct CardView: View {
    let prefix: String
    let card: Card
    var imgResName: String {
        guard let open = card.open else {
            return ""
        }
        if !open {
            return "\(prefix)_back"
        }
        return String(format: "\(prefix)_%02d_01", card.number)
    }
    var body: some View {
        Image(imgResName)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    VStack {
        ForEach(1...8, id: \.self) { num in
            HStack {
                CardView(prefix: "f", card: Card(number: num, open: true))
                CardView(prefix: "f", card: Card(number: num, open: false))
                CardView(prefix: "f", card: Card(number: num, open: nil))
               CardView(prefix: "t", card: Card(number: num, open: false))
            }
        }
    }
}
