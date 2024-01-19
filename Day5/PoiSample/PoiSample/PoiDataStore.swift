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
    
    func startLoading() {
        let strUrl = "\(Const.baseUrl)?Type=json&Key=\(Const.key)"
        NSLog("Loading: \(strUrl)")
        guard let url = URL(string: strUrl) else {
            print("Failed to build url")
            return
        }
//        urlString -> url -> request -> DataTask -> resume - data/error
//        let data = Data(contentsOf: url)
        let task = URLSession.shared.dataTask(with: url) { data, resp, err in
            guard let data = data else {
                print("No data from task.")
                return
            }

            guard let apiResult = try? JSONDecoder().decode(PoiAPIResult.self, from: data) else {
                print("Parse failed.")
                return
            }
            
            guard let pois = apiResult.genrestrtfastfood?[1].row else {
                print("No data from server")
                return
            }
            NSLog("\(pois.count) items loaded")
            self.items = pois
        }
        task.resume()
    }
}



