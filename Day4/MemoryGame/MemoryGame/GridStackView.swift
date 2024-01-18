//
//  GridStackView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct GridStackView: View {
    let columns: Int
    let rows: Int
    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< columns, id: \.self) { col in
                        Image(systemName: "globe")
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

#Preview {
    GridStackView(columns: 3, rows: 4)
}
