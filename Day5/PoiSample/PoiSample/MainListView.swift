//
//  ContentView.swift
//  PoiSample
//
//  Created by Kiyong Kim on 1/19/24.
//

import SwiftUI

struct MainListView: View {
    @ObservedObject var poiDataStore = PoiDataStore.shared
    var body: some View {
        NavigationView {
            VStack {
                List {
//                    ForEach() {
//                        
//                    }
                    Text("Poi Item")
                }
            }
            .navigationTitle("Fast Foods")
            .onAppear {
                poiDataStore.startLoading()
            }
        }
    }
}

#Preview {
    MainListView()
}
