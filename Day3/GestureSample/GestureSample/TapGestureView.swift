//
//  TapGustureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct TapGestureView: View {
    var body: some View {
        VStack {
            Text("Tap!")
        }
        .navigationTitle("Tap Gesture")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        TapGestureView()
    }
}
