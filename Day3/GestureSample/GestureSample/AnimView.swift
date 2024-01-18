//
//  AnimView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/18/24.
//

import SwiftUI

struct AnimView: View {
    @State var spinning = false
    @State var angle = Angle.zero
    var body: some View {
        VStack {
            Image(systemName: "arrow.clockwise.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.purple)
                .rotationEffect(angle)
                .animation(
                    spinning ? 
                        Animation
                        .linear(duration: 1.0)
                        .repeatForever(autoreverses: false)
                    :
                        Animation
                        .default,
                    value: angle
                )
                .padding()
                // animation vs transition
            
            Toggle(isOn: $spinning, label: {
                Text("Spins")
                    .font(.title)
            })
            .frame(width: 200)
            .onChange(of: spinning) { oldValue, newValue in
                angle = .degrees(spinning ? 360 : 0)
                print(spinning, angle)
            }
        }
        .onAppear {
            spinning = true
            angle = .degrees(spinning ? 360 : 0)
            print("onAppear", spinning, angle)
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
