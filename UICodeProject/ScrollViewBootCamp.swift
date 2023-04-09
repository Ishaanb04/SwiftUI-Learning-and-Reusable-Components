//
//  ScrollViewBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/19/23.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        //        ScrollView(.horizontal, showsIndicators: false){
        //            HStack{
        //                ForEach(0..<100){ index in
        //                    Rectangle()
        //                        .frame(width: 100, height: 300)
        //                        .cornerRadius(25)
        //                        .padding()
        //                }
        //            }
        //        }
        
        ScrollView(showsIndicators: false){
            VStack{
                ForEach(0..<10){ index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(width: 200, height: 150)
                        .shadow(color: .white,radius: 10)
                        .padding()
                }
            }
        }
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
