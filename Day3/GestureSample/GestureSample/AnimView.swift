//
//  AnimView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct AnimView: View {
    @State var spinning = true
    @State var angle = Angle.zero
    var body: some View {
        VStack {
            Image(systemName: "arrow.clockwise.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.purple)
                .rotationEffect(angle)
                .animation(
                    .linear(duration: 1.0)
                    .repeatForever(autoreverses: false),
                    value: angle
                )
                .padding()
                // animation vs transition
            
            Toggle(isOn: $spinning, label: {
                Text("Spins")
                    .font(.title)
            })
            .frame(width: 200)
        }
        .onAppear {
            angle = .degrees(spinning ? 360 : 0)
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
