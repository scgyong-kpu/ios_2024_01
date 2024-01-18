//
//  ScaleGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct ScaleGestureView: View {
    var body: some View {
        VStack {
            Text("Scale!")
        }
        .navigationTitle("Scale")
        .navigationBarTitleDisplayMode(.inline)
   }
}

#Preview {
    NavigationView {
        ScaleGestureView()
    }
}
