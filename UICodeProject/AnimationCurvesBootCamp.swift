//
//  AnimationCurvesBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/16/23.
//

import SwiftUI

struct AnimationCurvesBootCamp: View {
    
    @State var isAnimating: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.6,
                    blendDuration: 1.0
                ), value: isAnimating)
//                .animation(.default, value: isAnimating)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.linear, value: isAnimating)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeIn, value: isAnimating)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeInOut, value: isAnimating)
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeOut, value: isAnimating)
        }
    }
}

struct AnimationCurvesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesBootCamp()
    }
}
