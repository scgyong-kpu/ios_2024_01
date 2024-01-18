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
            Color.red
                .frame(width: 200, height: 50)
            Rectangle()
                .stroke(lineWidth: 8)
                .fill(
                    LinearGradient(
                        colors: [ .red, .blue ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(height: 50)
                .cornerRadius(10.0)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 8)
                .frame(height: 50)
                .padding(.horizontal)
            Capsule()
                .stroke(lineWidth: 10)
                .fill(
                    RadialGradient(
                        colors: [ .yellow, .red ],
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .frame(height: 50)
                .padding(.horizontal)
                .padding(.top)
            Circle()
                .frame(width: 100, height: 50)
            Ellipse()
                .frame(width: 100, height: 50)
                .padding()
            WaterDrop()
            HStack {
                WaterDrop()
                WaterDrop()
                WaterDrop()
            }
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

struct WaterDrop: View {
    var body: some View {
        GeometryReader { gr in
            Path { g in // Graphics
                let width = gr.size.width
                let halfWidth = width / 2
                let height = gr.size.height
                g.move(to: CGPoint(x: halfWidth, y: 0))
                g.addQuadCurve(
                    to: CGPoint(x: halfWidth, y: height),
                    control: CGPoint(x: 0, y: height)
                )
                g.addQuadCurve(
                    to: CGPoint(x: halfWidth, y: 0),
                    control: CGPoint(x: width, y: height)
                )
                g.closeSubpath()
            }
            .fill(
                LinearGradient(colors: [ .white, .blue ], startPoint: .topLeading, endPoint: .bottom)
            )
        }
    }
}
