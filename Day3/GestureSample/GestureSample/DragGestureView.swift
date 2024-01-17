//
//  DragGestureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

func + (a: CGSize, b: CGSize) -> CGSize {
    CGSize(
        width: a.width + b.width,
        height: a.height + b.height
    )
}

struct DragGestureView: View {
    @State var globePos = CGSize.zero
    @State var globeFinal = CGSize.zero
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .scaleEffect(3.0)
                .offset(globeFinal + globePos)
                .foregroundStyle(.blue)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            //print("TR=\(value.translation)")
                            globePos = value.translation
                        }
                        .onEnded { value in
                            globeFinal = globeFinal + globePos
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
