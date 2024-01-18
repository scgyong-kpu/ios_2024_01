//
//  GridStackView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct GridStackView<Content: View>: View {
    let columns: Int
    let rows: Int
    let content: (_ row: Int, _ col: Int) -> Content
    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< columns, id: \.self) { col in
                        content(row, col)
                    }
                }
            }
        }
    }
}

#Preview {
    GridStackView(columns: 3, rows: 4) { row, col in
        Image(systemName: "globe")
            .font(.largeTitle)
    }
}

#Preview {
    GridStackView(columns: 5, rows: 8) { row, col in
        Text("(\(row), \(col))")
    }
}
