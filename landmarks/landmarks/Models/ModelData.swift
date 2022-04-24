//
//  Data.swift
//  Landmarks
//
//  Created by tomonakar on 2022/04/23.
//

import Foundation

import Combine

// Combineフレームワークのプロトコルに準拠するObservableObjectを作ると、監視可能なオブジェクトとなり、
//SwiftUIがそのオブジェクトをサブスクライブし、データが変更されたタイミングでビューを更新する
final class ModelData: ObservableObject {
    // サブスクライバーが変更を取得できるように、Published属性で公開する
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
