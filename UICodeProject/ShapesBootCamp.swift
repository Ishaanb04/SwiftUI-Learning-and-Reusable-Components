//
//  ShapesBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/18/23.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
//        Circle()
//            .fill(.brown)
//            .foregroundColor(.green)
//            .stroke()
//            .stroke(.red)
//            .stroke(.red, lineWidth: 20)
//            .stroke(.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 50)
//            .padding()
            
        
//        Ellipse()
//            .fill(.green)
//            .frame(width: 200, height: 100)
        
//        Capsule(style: .continuous)
//            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
