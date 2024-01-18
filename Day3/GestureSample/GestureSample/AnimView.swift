//
//  AnimView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct AnimView: View {
    @State var spinning = false
    var body: some View {
        VStack {
            Image(systemName: "arrow.clockwise.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.purple)
                .rotationEffect(.degrees(spinning ? 90 : 0))
                .animation(
                    .linear(duration: 1.0),
                    value: spinning ? 90 : 0
                )
                .padding()
            Toggle(isOn: $spinning, label: {
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
