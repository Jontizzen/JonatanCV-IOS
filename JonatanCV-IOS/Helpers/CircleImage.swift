//
//  CircleImage.swift
//  JonatanCV-IOS
//
//  Created by Debora Johansson on 4/2/21.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        
        image
            .resizable()
            .renderingMode(.original)
            .frame(width: 250, height: 250, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.newPrimaryColor, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Group {
            
            CircleImage(image: Image("JUImage"))
            CircleImage(image: Image("HTSImage"))
        }
    }
}
