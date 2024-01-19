//
//  PoiDetailView.swift
//  PoiSample
//
//  Created by Kiyong Kim on 1/19/24.
//

import SwiftUI

struct PoiDetailView: View {
    let poi: PoiItem
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "tram.circle")
                        .resizable()
                        .frame(width: 32, height: 32)
                    Text(poi.bizplcNm ?? "")
                }
                HStack {
                    Image(systemName: "phone.circle")
                        .resizable()
                        .frame(width: 32, height: 32)
                    Text("1588-3820")
                }
                HStack {
                    Image(systemName: "envelope.circle")
                        .resizable()
                        .frame(width: 32, height: 32)
                    Text(poi.refineZipCD ?? "")
                }
                HStack {
                    Image(systemName: "house.circle")
                        .resizable()
                        .frame(width: 32, height: 32)
                    Text(poi.refineRoadnmAddr ?? "")
                }
           }
        }
        .navigationTitle(poi.bizplcNm ?? "")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        PoiDetailView(poi: PoiItem.fromJson(json: PoiItem.sampleJson))
    }
}


extension PoiItem {
    static func fromJson(json: String) -> PoiItem {
        let decoder = JSONDecoder()
        let data = json.data(using: .utf8)!
        let item = try? decoder.decode(PoiItem.self, from: data)
        return item!
    }
    static let sampleJson = """
        {
          "SIGUN_NM": "화성시",
          "SIGUN_CD": "41590",
          "BIZPLC_NM": "하우스홀드",
          "LICENSG_DE": "2011-12-02",
          "BSN_STATE_NM": "영업",
          "CLSBIZ_DE": null,
          "LOCPLC_AR": null,
          "GRAD_FACLT_DIV_NM": null,
          "MALE_ENFLPSN_CNT": null,
          "YY": null,
          "MULTI_USE_BIZESTBL_YN": null,
          "GRAD_DIV_NM": null,
          "TOT_FACLT_SCALE": null,
          "FEMALE_ENFLPSN_CNT": null,
          "BSNSITE_CIRCUMFR_DIV_NM": null,
          "SANITTN_INDUTYPE_NM": null,
          "SANITTN_BIZCOND_NM": "패스트푸드",
          "TOT_EMPLY_CNT": null,
          "REFINE_LOTNO_ADDR": "경기도 화성시 남양읍 북양리 534-2 1층 ",
          "REFINE_ROADNM_ADDR": "경기도 화성시 남양읍 현대기아로 703-4, 1층 (북양동)",
          "REFINE_ZIP_CD": "18255",
          "REFINE_WGS84_LOGT": "126.8550891224",
          "REFINE_WGS84_LAT": "37.2110229779"
        }
"""
}
