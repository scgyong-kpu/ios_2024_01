//
//  ContentView.swift
//  MoreControls
//
//  Created by Kiyong Kim on 1/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var rotDegrees = 0.0
    @State var large = true
    var body: some View {
        VStack {
            List {
                Text("Hello")
                Text("World")
                Text("Hello")
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)

                Text("World")
                Text("Hello")
                Text("World")
                Text("Hello")
                Text("World")
                Text("Hello")
                Text("World")
            }
            Image(systemName: "arrow.right.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.frame(width: large ? 200 : 100, height: 200)
                .foregroundColor(.yellow)
                .scaleEffect(large ? 1.0 : 0.5)
                .animation(.linear(duration: 0.3), value: large ? 1.0 : 0.5)
                .rotationEffect(.degrees(rotDegrees))
                .shadow(color: .red, radius: 10, x: 10, y: 10)
            Slider(value: $rotDegrees, in: 0.0 ... 360.0)
                .frame(width: 200)
            Toggle(isOn: $large) {
                Text("Shows Large Circle")
            }
            .padding()
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
