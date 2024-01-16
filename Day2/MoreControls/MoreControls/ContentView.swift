//
//  ContentView.swift
//  MoreControls
//
//  Created by Kiyong Kim on 1/16/24.
//

import SwiftUI

struct ContentView: View {
    let names = [
        "jkfe", "Hello", "World", "Kakaka", "Puhaha", "Kekeke",
        "Hohoho", "Hihihi", "Kukuku",
        "jkfe", "Hello", "World", "Kakaka", "Puhaha", "Kekeke",
        "Hohoho", "Hihihi", "Kukuku",
        "jkfe", "Hello", "World", "Kakaka", "Puhaha", "Kekeke",
        "Hohoho", "Hihihi", "Kukuku"
   ]
    var body: some View {
        NavigationView {
            List {
                ForEach(names, id: \.self) { name in
                    NavigationLink {
                        VStack {
                            Image(systemName: "fan.desk")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Text(name)
                        }
                        .navigationTitle("Detail")
                        .navigationBarTitleDisplayMode(.inline)
                    } label: {
                        HStack {
                            Image(systemName: "pencil.tip.crop.circle.badge.arrow.forward")
                            Text("Name: \(name)")
                        }
                    }
                }
            }
            .navigationTitle("Worlds")
        }
    }
}

#Preview {
    ContentView()
}
