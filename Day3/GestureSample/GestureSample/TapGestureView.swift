//
//  TapGustureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct TapGestureView: View {
    @State var count: Int = 0
    var body: some View {
        VStack {
            Text("Tap Me! \(count)")
                .font(.largeTitle)
                .foregroundStyle(.blue)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .onTapGesture {
                    count += 1
                }
//                .gesture(
//                    TapGesture()
//                        .onEnded {
//                            //print("Tapped !!")
//                            count += 1
//                        }
//                )
        }
        .navigationTitle("Tap Gesture")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        TapGestureView()
    }
}
