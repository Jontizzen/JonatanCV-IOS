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
        case merits
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            UserDetail()
                .tabItem {
                    Label("Personligt brev", systemImage: "person.fill")
                }
                .tag(Tab.about)
            
            ExperienceHome()
                .tabItem {
                    Label("Erfarenheter", systemImage: "list.bullet")
                }
                .tag(Tab.work)
            
            MeritView()
                .tabItem {
                    Label("Meriter",
                          systemImage: "star.fill")
                }
                .tag(Tab.merits)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
            .environmentObject(ModelData())
    }
}
