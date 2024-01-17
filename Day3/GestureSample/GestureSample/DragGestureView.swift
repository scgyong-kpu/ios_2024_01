//
//  DragGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct DragGestureView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .scaleEffect(3.0)
                .offset(CGSize(width: 100, height: -300))
                .foregroundStyle(.blue)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            print("TR=\(value.translation)")
                        }
                )
        }
        .navigationTitle("Drag")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        DragGestureView()
    }
}
