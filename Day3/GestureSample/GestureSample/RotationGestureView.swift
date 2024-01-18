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
            Text("Rotation!")
        }
        .navigationTitle("Rotation")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        RotationGestureView()
    }
}
