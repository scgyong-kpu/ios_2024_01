//
//  ContentView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    TapGestureView()
                } label: {
                    Text("Tap & LongPress")
                }
                NavigationLink {
                    DragGestureView()
                } label: {
                    Text("Drag")
                }
           }
            .navigationTitle("Gestures Test")
        }
    }
}

#Preview {
    MainView()
}
