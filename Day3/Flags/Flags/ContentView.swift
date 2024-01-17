//
//  ContentView.swift
//  Flags
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            HStack {
                Image("argentina")
                Text("Argentina")
            }
            HStack {
                Image("south_korea")
                Text("South Korea")
            }
            HStack {
                Image("hong_kong")
                Text("香港")
            }
        }
    }
}

#Preview {
    ContentView()
}
