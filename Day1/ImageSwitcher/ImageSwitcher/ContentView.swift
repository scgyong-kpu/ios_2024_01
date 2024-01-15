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
            HStack {
                Image(systemName: "arrow.left.circle.fill")
                Text("1/5")
                Image(systemName: "arrow.right.circle.fill")
            }
            Image(systemName:"cat")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
