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
            GeometryReader { gr in
                Path { g in // Graphics
                    g.move(to: CGPoint(x: gr.size.width / 2, y: 0))
                    g.addLine(to: CGPoint(x: 0, y: gr.size.height))
                    g.addLine(to: CGPoint(x: gr.size.width, y: gr.size.height))
                   g.closeSubpath()
                }
                .fill(
                    LinearGradient(colors: [ .white, .blue ], startPoint: .topLeading, endPoint: .bottom)
                )
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
