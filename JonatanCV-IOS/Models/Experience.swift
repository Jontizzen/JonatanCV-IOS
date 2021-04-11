//
//  Landmark.swift
//  SwiftUITutorial
//
//  Created by Jonatan Larsson 3/10/21.
//

import Foundation
import SwiftUI
import CoreLocation


struct Experience: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var city: String
    var date: String
    var isFeatured: Bool
    var description: String
    
    var category: Category
    
    private var coordinates: Coordinates
    
    enum Category: String, CaseIterable, Codable {
        
        case work = "Arbetslivserfarenhet"
        case education = "Utbildning"
        case merits = "Meriter"
    }

    private var imageName: String
    var image: Image {
        
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {

        CLLocationCoordinate2D (
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {

        var latitude: Double
        var longitude: Double
    }
}
