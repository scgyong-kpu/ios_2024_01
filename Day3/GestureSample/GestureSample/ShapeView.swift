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
                .frame(height: 50)
                .padding(.horizontal)
                .padding(.top)
            Circle()
                .frame(width: 100, height: 50)
            Ellipse()
                .frame(width: 100, height: 50)
                .padding()
            Path { g in // Graphics
                g.move(to: .zero)
                g.addLine(to: CGPoint(x: 100, y: 200))
                g.addLine(to: CGPoint(x: 200, y: 100))
                g.addLine(to: CGPoint(x: 150, y: 50))
                //g.closeSubpath()
            }
            .stroke(style: StrokeStyle(
                lineWidth: 3,
                lineCap: .round,
                lineJoin: .bevel,
                dash: [20, 10, 10, 10]
            ))
            .fill(.blue)
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
