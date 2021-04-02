//
//  ExperienceDetail.swift
//  JonatanCV-IOS
//
//  Created by Debora Johansson on 4/2/21.
//

import SwiftUI

struct ExperienceDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var experience : Experience
    
    var experienceIndex: Int {
        
        modelData.experiences.firstIndex(where: { $0.id == experience.id })!
    }
    
    var body: some View {
        
        ScrollView {
            
            
            MapView(coordinate: experience.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
            
            CircleImage(image: experience.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                HStack {
                    
                    Text(experience.name)
                        .foregroundColor(.primary)
                        .font(.title)
                        .padding(.leading)

                }
                
                HStack {
                    
                    Text(experience.city)
                        .font(.subheadline)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Text("Period: \(experience.date)")
                        .font(.subheadline)
                        .padding()
                }
                
                Divider()
                
                Text(experience.description)
                    .padding(.leading)
                    .padding(.top)
            }
        }    }
}

struct ExperienceDetail_Previews: PreviewProvider {

    static let modelData = ModelData()
    
    static var previews: some View {
        
        ExperienceDetail(experience: ModelData().experiences[6])
            .environmentObject(modelData)
    }
}
