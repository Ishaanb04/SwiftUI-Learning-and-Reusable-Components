//
//  SpacersBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/19/23.
//

import SwiftUI

struct SpacersBootcamp: View {
    var body: some View {
        //        HStack{
        //            Rectangle()
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 50, height: 50)
        //        }
        //        .padding()
        
        VStack {
            HStack{
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            Spacer()
            
            Rectangle()
                .fill(.red)
                .frame(width: 300, height: 200)
                .cornerRadius(25)
                .shadow(color: .black, radius: 10, x:0, y: 10)
        }
    }
}

struct SpacersBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacersBootcamp()
    }
}
