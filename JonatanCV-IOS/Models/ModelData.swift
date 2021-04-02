//
//  ModelData.swift
//  JonatanCV-IOS
//
//  Created by Jonatan Larsson on 4/2/21.
//

import Foundation

//MARK:- SwiftUI subscribes to your observable object, and updates any views that need refreshing when the data changes.
final class ModelData: ObservableObject {
    
    @Published var experiences : [Experience] = load("experienceData.json")

    // Instance of the user profile that persists even after the user dismisses the profile view
    //@Published var profile = Profile.default
    
    //@Published var profile : Profile = load("profileData.json")
    
    var categories: [String: [Experience]] {
            Dictionary(
                grouping: experiences,
                by: { $0.category.rawValue }
            )
    }
    
    var features: [Experience] {
        
        experiences.filter { $0.isFeatured }
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could not find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")
    }
}
