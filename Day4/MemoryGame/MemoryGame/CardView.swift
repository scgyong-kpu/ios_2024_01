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
    let open: Bool
    var imgResName: String {
        if !open {
            return "\(prefix)_back"
        }
        return String(format: "\(prefix)_%02d_01", number)
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
                CardView(prefix: "f", number: num, open: true)
                CardView(prefix: "f", number: num, open: false)
                CardView(prefix: "t", number: num, open: false)
            }
        }
    }
}
