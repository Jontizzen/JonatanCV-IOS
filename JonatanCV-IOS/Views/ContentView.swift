//
//  ContentView.swift
//  JonatanCV-IOS
//
//  Created by Debora Johansson on 3/31/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .about

    enum Tab {
        
        case about
        case work
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            UserDetail()
                .tabItem {
                    Label("Personal letter", systemImage: "star")
                }
                .tag(Tab.about)
            
            ExperienceHome()
                .tabItem {
                    Label("Experience", systemImage: "list.bullet")
                }
                .tag(Tab.work)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
            .environmentObject(ModelData())
    }
}
