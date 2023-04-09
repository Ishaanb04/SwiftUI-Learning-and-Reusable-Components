//
//  SystemMaterialsBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/24/23.
//

import SwiftUI

struct SystemMaterialsBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 50, height: 5)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(
                .thinMaterial)
            .cornerRadius(25)
        }
        .ignoresSafeArea()
        .background(
            Image("Jeff")
        )
    }
}

struct SystemMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemMaterialsBootcamp()
    }
}
