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
                //.font(.largeTitle)
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.accentColor)
            Text("Hello, SwiftUI !")
                .font(.largeTitle)
                .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .padding()
                .border(Color.black)
                .padding()
                .background(Color.orange)
            HStack {
                Image(systemName: "pencil.circle.fill")
                    .font(.largeTitle)
                Text("Pencil")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
