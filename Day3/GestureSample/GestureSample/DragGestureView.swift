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
            Text("Drag!")
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
