//
//  ColorsBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/18/23.
//

import SwiftUI

struct ColorsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .primary
//                Color(uiColor: UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, y: 20)
    }
}

struct ColorsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootCamp()
    }
}
