//
//  UserDeatil.swift
//  JonatanCV-IOS
//
//  Created by Debora Johansson on 4/2/21.
//

import SwiftUI

extension Color {
    
    static let newPrimaryColor = Color("TitleColor")
}

struct UserDeatil: View {
    
    var body: some View {
        
        ScrollView {
            
            ZStack {
                
                Image("softwareDevelopment")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 450, height: 300, alignment: .top)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.bottom)
                    .offset(y: -50)
                
                Profile.default.image
                    .resizable()
                    .frame(width: 230, height: 250, alignment: .bottom)
                    .padding(.top)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.newPrimaryColor, lineWidth: 3))
                    .shadow(radius: 7)
                    .offset(y: 50)
            }
            
            VStack(alignment: .center) {
                
                HStack(alignment: .center) {
                    
                    Image(systemName: "person.icloud.fill")
                        .resizable()
                        .foregroundColor(Color.newPrimaryColor)
                        .frame(width: 25, height: 20, alignment: .center)
                        .offset(x: 15, y: 1)
                    
                    Text(Profile.default.name)
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(width: 250, height: 20, alignment: .bottom)
                        .padding(.top)
                        .foregroundColor(.black)
                }
                
            }
        }
    }
}

struct UserDeatil_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UserDeatil()
    }
}
