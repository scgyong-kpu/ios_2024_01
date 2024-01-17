//
//  ContentView.swift
//  Flags
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("argentina")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Argentina")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
