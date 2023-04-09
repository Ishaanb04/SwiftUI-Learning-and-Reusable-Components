//
//  ForEachBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/19/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = []
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("The index is: \(index)")
                }
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
