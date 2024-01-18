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
                Section("Gesture") {
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
                    NavigationLink {
                        RotationGestureView()
                    } label: {
                        Text("Rotation")
                    }
                    NavigationLink {
                        ScaleGestureView()
                    } label: {
                        Text("Scale")
                    }
                }
                Section("Others") {
                    NavigationLink {
                        ShapeView()
                    } label: {
                        Text("Shapes")
                    }
                    NavigationLink {
                    } label: {
                        Text("Animation")
                    }
                }
            }
            .navigationTitle("Gestures Test")
        }
    }
}

#Preview {
    MainView()
}
