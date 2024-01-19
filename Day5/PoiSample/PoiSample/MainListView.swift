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
        HStack {
            Image(systemName: "fork.knife.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
                .foregroundStyle(
                    .linearGradient(
                        colors: [.yellow, .purple],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
            VStack(alignment: .leading) {
                Text(poi.bizplcNm ?? "")
                    .font(.title)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .foregroundStyle(.blue)
                Text(poi.bsnStateNm ?? "")
                Text(poi.refineRoadnmAddr ?? "")
                    .font(.footnote)
                    .lineLimit(1)
                    .foregroundStyle(.gray)
            }
        }
    }
}
