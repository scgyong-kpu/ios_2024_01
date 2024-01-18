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
            Image(systemName: "arrow.clockwise.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.purple)
                .rotationEffect(.degrees(90))
                .padding()
            Toggle(isOn: .constant(true), label: {
                Text("Spins")
                    .font(.title)
            })
            .frame(width: 200)
        }
        .navigationTitle("Animation")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        AnimView()
    }
}
