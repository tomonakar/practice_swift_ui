//
//  Landmark.swift
//  Landmarks
//
//  Created by tomonakar on 2022/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

// Hashable: その型の値を元にハッシュ値が計算可能であることを表す.
// Hash関連のメソッドが利用できるようになる,Hashable準拠型の利用が可能になる(Set, Dictionaryなど）

// Codable: JSONやプロパティリストを任意のデータ型に変換するプロトコル
// 外部から取得したデータなどをコード内で利用しやすい型に変換する（Codable = Encodable + Decodable）

// Identifiable: idプロパティを持ち、ForEachなどのイテレーションでkeyにidを指定しなくても読み込んでくれる
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case river = "Rivers"
        case mountains = "Mountains"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
