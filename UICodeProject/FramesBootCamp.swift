//
//  FramesBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/18/23.
//

import SwiftUI

struct FramesBootCamp: View {
    var body: some View {
        Text("Hello, World!")
//            .background(.green)
//            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(.red)
            .background(.red)
            .frame(height: 100)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity)
            .background(.pink)
            .frame(maxHeight: .infinity)
            .background(.green)
    }
}

struct FramesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesBootCamp()
    }
}
