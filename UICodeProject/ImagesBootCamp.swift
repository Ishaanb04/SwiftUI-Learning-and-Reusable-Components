//
//  ImagesBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/18/23.
//

import SwiftUI

struct ImagesBootCamp: View {
    var body: some View {
        Image("Jeff")
//            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 200)
//            .clipped()
//            .cornerRadius(30)
            .clipShape(
//                Circle()
                RoundedRectangle(cornerRadius: 25) 
            )
        
    }
}

struct ImagesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootCamp()
    }
}
