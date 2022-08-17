//
//  ModelData.swift
//  SimpsonBook
//
//  Created by Chris Hand on 8/16/22.
//

import Foundation

final class ModelData {
    var characters = [Characters]()
    
    func loadCharacters() {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: "SimpsonData", withExtension: nil)
        else {
            fatalError("Couldn't find SimpsonData in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load SimpsonData from main bundle")
        }
                       
        do {
            let decoder = JSONDecoder()
            characters = try decoder.decode([Characters].self, from: data)
        } catch {
            fatalError("Couldn't parse SimpsonData as \([Characters].self)\n\(error)")
        }
    }
}

struct Characters : Decodable {
    var imageName: String
    var imageTitle: String
}
