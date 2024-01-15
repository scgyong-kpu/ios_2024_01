//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "arrow.up.bin")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, SwiftUI !")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
