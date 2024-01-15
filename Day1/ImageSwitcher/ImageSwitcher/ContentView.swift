//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var page = 1
    let totalPage = 5
    var body: some View {
        VStack {
            HStack {
                Button {
                    if page > 1 {
                        page -= 1
                    }
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                }
                Text("\(page)/\(totalPage)")
                    //.background(Color.blue)
                    .frame(maxWidth: .infinity)
                Button {
                    if page < totalPage {
                        page += 1
                    }
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
