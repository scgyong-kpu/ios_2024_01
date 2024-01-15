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
                Button {
                    print("Previous Button Pressed")
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                }
                Text("1/5")
                    //.background(Color.blue)
                    .frame(maxWidth: .infinity)
                Button {
                    print("Next Button Pressed")
                } label: {
                    Image(systemName: "arrow.right.circle.fill")
                }
            }
            .font(.largeTitle)
            Image("cat1")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
