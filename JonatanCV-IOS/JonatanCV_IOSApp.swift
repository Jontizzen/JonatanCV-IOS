//
//  JonatanCV_IOSApp.swift
//  JonatanCV-IOS
//
//  Created by Debora Johansson on 3/31/21.
//

import SwiftUI

@main
struct JonatanCV_IOSApp: App {
    
    @StateObject private var modeldata = ModelData()

    var body: some Scene {
        
        WindowGroup {
            
            ContentView()
                .environmentObject(modeldata)
        }
    }
}
