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
            }
            .navigationTitle("Gestures Test")
        }
    }
}

#Preview {
    MainView()
}
