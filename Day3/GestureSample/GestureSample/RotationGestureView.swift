//
//  RotationGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct RotationGestureView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "arrow.right.circle")
                    .font(.largeTitle)
                    .scaleEffect(4.0)
                    .padding()
                Text("Rotation!")
                    .font(.largeTitle)
                    .padding()
            }
            .foregroundColor(.purple)
            .background(Color.orange.opacity(0.3))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.opacity(0.2))
        .navigationTitle("Rotation")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        RotationGestureView()
    }
}
