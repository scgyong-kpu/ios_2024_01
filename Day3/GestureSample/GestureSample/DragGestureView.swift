//
//  DragGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct DragGestureView: View {
    @State var globePos = CGSize.zero
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .scaleEffect(3.0)
                .offset(globePos)
                .foregroundStyle(.blue)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            //print("TR=\(value.translation)")
                            globePos = value.translation
                        }
                        .onEnded { value in
                            globePos = .zero
                        }
                )
        }
        .navigationTitle("Drag")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        DragGestureView()
    }
}
