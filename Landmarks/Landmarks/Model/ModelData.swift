//
//  ModelData.swift
//  Landmarks
//
//  Created by Carlos Alonso Camiña on 6/8/25.
//

import Foundation
import Observation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as JSON: \(T.self):\n\(error)")
    }
}
