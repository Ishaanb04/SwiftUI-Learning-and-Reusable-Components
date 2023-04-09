//
//  TextBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/18/23.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Hello, World!")
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline(true, color: .pink)
//            .underline()
//            .italic()
//        The are relative to the phone size
        
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//        Size stay same for all sizes
//            .baselineOffset(10) -> Space b/w lines
//            .kerning(4) -> Space between letters
            .multilineTextAlignment(.leading)
            .foregroundColor(.pink)
            .frame(width: 200, height: 100, alignment: .top)
            .minimumScaleFactor(0.1)
            
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
