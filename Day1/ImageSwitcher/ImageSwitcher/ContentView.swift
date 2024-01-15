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
                    page -= 1
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                }
                .background(Color.yellow)
                .padding()
                .background(Color.blue)
                .disabled(page == 1)
                Text("\(page)/\(totalPage)")
                    //.background(Color.blue)
                    .frame(maxWidth: .infinity)
                Button {
                    page += 1
                } label: {
                    Image(systemName: "arrow.right.circle.fill")
                }
                .background(Color.yellow)
                .padding()
                .background(Color.blue)
                .disabled(page == totalPage)
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
