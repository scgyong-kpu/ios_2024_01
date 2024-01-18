//
//  AnimView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct AnimView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .navigationTitle("Animation")
        .navigationBarTitleDisplayMode(.inline)    }
}

#Preview {
    NavigationView {
        AnimView()
    }
}
