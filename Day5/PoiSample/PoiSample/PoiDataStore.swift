//
//  PoiDataStore.swift
//  PoiSample
//
//  Created by Kiyong Kim on 1/19/24.
//

import Foundation

typealias PoiItem = Row

class PoiDataStore: ObservableObject {
    struct Const {
        static let baseUrl = "https://openapi.gg.go.kr/Genrestrtfastfood"
        static let key = "e92ec3e6a9f44981974d4746d28f8995"
    }
    @Published var items = [PoiItem]()

    static let shared = PoiDataStore()
    private init() {}
}



