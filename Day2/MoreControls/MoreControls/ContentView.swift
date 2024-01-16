//
//  ContentView.swift
//  MoreControls
//
//  Created by Kiyong Kim on 1/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Image(systemName: "arrow.right.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.yellow)
                .shadow(color: .red, radius: 10, x: 10, y: 10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [
                .white, .cyan, .red
            ], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
}

#Preview {
    ContentView()
}
