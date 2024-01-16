//
//  ContentView.swift
//  MoreControls
//
//  Created by Kiyong Kim on 1/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var rotDegrees = 0.0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! \(String(format: "%3.1f", rotDegrees))")
            Image(systemName: "arrow.right.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(.yellow)
                .rotationEffect(.degrees(rotDegrees))
                .shadow(color: .red, radius: 10, x: 10, y: 10)
            Slider(value: $rotDegrees, in: 0.0 ... 360.0)
                .frame(width: 200)
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
