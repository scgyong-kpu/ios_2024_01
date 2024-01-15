//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var page = 1
    var body: some View {
        VStack {
            HStack {
                Button {
                    page = 2
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                }
                Text("\(page)/5")
                    //.background(Color.blue)
                    .frame(maxWidth: .infinity)
                Button {
                    page = 3
                } label: {
                    Image(systemName: "arrow.right.circle.fill")
                }
            }
            .font(.largeTitle)
            Image("cat\(page)")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
