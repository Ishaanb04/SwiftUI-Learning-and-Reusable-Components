//
//  GradiantsBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/18/23.
//

import SwiftUI

struct GradiantsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //                .red
                //                LinearGradient(
                //                    colors: [.red, .purple],
                //                    startPoint: .topLeading, endPoint: .bottomTrailing)
                //                RadialGradient(
                //                    gradient: Gradient(colors: [Color.red, Color.purple]),
                //                    center: .topLeading,
                //                    startRadius: 5,
                //                    endRadius: 400)
//                AngularGradient(colors: [.red, .purple],
//                                center: .topLeading,
//                                angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradiantsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradiantsBootCamp()
    }
}
