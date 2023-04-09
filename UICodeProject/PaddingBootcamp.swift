//
//  PaddingBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/19/23.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .padding()
//            .background(.blue)
//            .cornerRadius(25)
        VStack(alignment: .leading) {
            Text("The Title!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on the screeen and it will be multipleline line text that will be alligned to leading eqdge of the screen.")
                
        }
        .foregroundColor(.black)
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .white.opacity(0.4), radius: 10, y: 10)
        )
        .padding(.horizontal, 10)
        
            
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
