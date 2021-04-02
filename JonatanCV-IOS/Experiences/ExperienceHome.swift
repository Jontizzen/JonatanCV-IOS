//
//  ExperienceHome.swift
//  JonatanCV-IOS
//
//  Created by Debora Johansson on 4/2/21.
//

import SwiftUI

struct ExperienceHome: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .padding(.bottom)
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    
                    ExperienceRow(categoryName: key, items: modelData.categories[key]!)
                    
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Current")
        }
    }
}

struct ExperienceHome_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ExperienceHome()
            .environmentObject(ModelData())
    }
}
