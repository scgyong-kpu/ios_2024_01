//
//  ShapeView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
        .navigationTitle("Drawings")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        ShapeView()
    }
}
