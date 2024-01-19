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
                    ForEach(poiDataStore.items) { poi in
                        PoiItemView(poi: poi)
                    }
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

struct PoiItemView: View {
    let poi: PoiItem
    var body: some View {
        Text(poi.bizplcNm ?? "")
    }
}
