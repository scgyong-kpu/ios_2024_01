//
//  TapGustureView.swift
//  GestureSample
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct TapGestureView: View {
    @State var count: Int = 0
    var countString: String {
        if count == 0 { return "" }
        return "\(count)"
    }
    var body: some View {
        VStack {
            Text("Tap Me! \(countString)")
                .font(.largeTitle)
                .foregroundStyle(.blue)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .onTapGesture {
                    count += 1
                }
                .onLongPressGesture {
                    count += 10
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
