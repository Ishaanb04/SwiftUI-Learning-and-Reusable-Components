//
//  IconsBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/18/23.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
//            .font(.system(size: 200))
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .foregroundColor(.cyan)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
