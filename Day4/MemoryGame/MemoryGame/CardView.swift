//
//  CardView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct CardView: View {
    let prefix: String
    let number: Int
    var body: some View {
        Image(String(format: "\(prefix)_%02d_01", number))
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    VStack {
        ForEach(1...8, id: \.self) { num in
            CardView(prefix: "f", number: num)
        }
    }
}
