//
//  ExperienceRow.swift
//  JonatanCV-IOS
//
//  Created by Debora Johansson on 4/2/21.
//

import SwiftUI

struct ExperienceRow: View {
    
    var categoryName : String
    var items: [Experience]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(alignment: .top, spacing: 20) {
                    
                    ForEach(items) { experience in
                        
                        NavigationLink(destination: ExperienceDetail(experience: experience)) {
                            
                            ExperienceItem(experience: experience)
                        }
                        
                    }
                    
                }
            }
            .frame(height: 185)
        }
    }
}

struct ExperienceRow_Previews: PreviewProvider {
    
    static var experiences = ModelData().experiences

    static var previews: some View {
        
        ExperienceRow(categoryName: experiences[0].category.rawValue, items: Array(experiences.prefix(7)))
    }
}
