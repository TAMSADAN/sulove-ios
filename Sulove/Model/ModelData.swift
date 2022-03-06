//
//  ModelData.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/26.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var memos : [Memo] = load("MemoData.json")
    @Published var buckets : [Bucket] = load("BucketData.json")
    @Published var ddays : [Dday] = load("DdayData.json")
}

func load<T:Decodable>(_ filename: String) -> T{
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
