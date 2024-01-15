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
                //.frame(width: 100, height: 100)
                .frame(maxWidth: .infinity)
                .foregroundColor(.accentColor)
                .background(
                    Capsule()
                        .foregroundColor(.yellow)
                )
            RoundedRectangle(cornerRadius: 50, style: .continuous)
                .stroke()
            Capsule()
            Color.red
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
                Text("Pencil")
            }
            .font(.largeTitle)
        }
        .padding()
        .border(Color.blue)
    }
}

#Preview {
    ContentView()
}
