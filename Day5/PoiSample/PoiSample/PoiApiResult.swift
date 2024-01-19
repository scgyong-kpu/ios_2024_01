// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let poiAPIResult = try? JSONDecoder().decode(PoiAPIResult.self, from: jsonData)

import Foundation

// MARK: - PoiAPIResult
struct PoiAPIResult: Codable {
    let genrestrtfastfood: [Genrestrtfastfood]?

    enum CodingKeys: String, CodingKey {
        case genrestrtfastfood = "Genrestrtfastfood"
    }
}

// MARK: - Genrestrtfastfood
struct Genrestrtfastfood: Codable {
    let head: [Head]?
    let row: [Row]?
}

// MARK: - Head
struct Head: Codable {
    let listTotalCount: Int?
    let result: Result?
    let apiVersion: String?

    enum CodingKeys: String, CodingKey {
        case listTotalCount = "list_total_count"
        case result = "RESULT"
        case apiVersion = "api_version"
    }
}

// MARK: - Result
struct Result: Codable {
    let code, message: String?

    enum CodingKeys: String, CodingKey {
        case code = "CODE"
        case message = "MESSAGE"
    }
}

// MARK: - Row
struct Row: Codable, Identifiable {
    let id = UUID()
    let sigunNm: String?
    let sigunCD: String?
    let bizplcNm, licensgDe, bsnStateNm: String?
    let clsbizDe, locplcAr, gradFacltDivNm: String?
    let maleEnflpsnCnt: Int?
    let yy, multiUseBizestblYn, gradDivNm, totFacltScale: String?
    let femaleEnflpsnCnt: Int?
    let bsnsiteCircumfrDivNm: String?
    let sanittnIndutypeNm: String?
    let sanittnBizcondNm: String?
    let totEmplyCnt: Int?
    let refineLotnoAddr, refineRoadnmAddr, refineZipCD, refineWgs84Logt: String?
    let refineWgs84Lat: String?

    enum CodingKeys: String, CodingKey {
        case sigunNm = "SIGUN_NM"
        case sigunCD = "SIGUN_CD"
        case bizplcNm = "BIZPLC_NM"
        case licensgDe = "LICENSG_DE"
        case bsnStateNm = "BSN_STATE_NM"
        case clsbizDe = "CLSBIZ_DE"
        case locplcAr = "LOCPLC_AR"
        case gradFacltDivNm = "GRAD_FACLT_DIV_NM"
        case maleEnflpsnCnt = "MALE_ENFLPSN_CNT"
        case yy = "YY"
        case multiUseBizestblYn = "MULTI_USE_BIZESTBL_YN"
        case gradDivNm = "GRAD_DIV_NM"
        case totFacltScale = "TOT_FACLT_SCALE"
        case femaleEnflpsnCnt = "FEMALE_ENFLPSN_CNT"
        case bsnsiteCircumfrDivNm = "BSNSITE_CIRCUMFR_DIV_NM"
        case sanittnIndutypeNm = "SANITTN_INDUTYPE_NM"
        case sanittnBizcondNm = "SANITTN_BIZCOND_NM"
        case totEmplyCnt = "TOT_EMPLY_CNT"
        case refineLotnoAddr = "REFINE_LOTNO_ADDR"
        case refineRoadnmAddr = "REFINE_ROADNM_ADDR"
        case refineZipCD = "REFINE_ZIP_CD"
        case refineWgs84Logt = "REFINE_WGS84_LOGT"
        case refineWgs84Lat = "REFINE_WGS84_LAT"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
