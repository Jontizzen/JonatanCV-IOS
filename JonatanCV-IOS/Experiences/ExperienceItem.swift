//
//  ExperienceItem.swift
//  JonatanCV-IOS
//
//  Created by Debora Johansson on 4/2/21.
//

import SwiftUI

struct ExperienceItem: View {
    
    var experience : Experience
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            experience.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 130, height: 130)
                .cornerRadius(5)
            
            Text(experience.name)
                .font(.caption)
                .foregroundColor(.primary)
                .padding(.leading)
                
        }
    }
}

struct ExperienceItem_Previews: PreviewProvider {
    
    static var previews: some View {
        
        
        Group {
            
            ExperienceItem(experience: ModelData().experiences[4])
            ExperienceItem(experience: ModelData().experiences[6])

        }
    }
}
