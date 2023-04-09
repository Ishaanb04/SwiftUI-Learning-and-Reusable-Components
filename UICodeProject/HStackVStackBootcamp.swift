//
//  HStackVStackBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/19/23.
//

import SwiftUI

struct HStackVStackBootcamp: View {
    var body: some View {
//        ZStack(alignment: .top){
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading, spacing: 30){
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//
//                HStack {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(.white)
//            }
//            .background(.blue)
//        }
        
//        VStack(alignment: .center, spacing: 20){
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Items in your cart: ")
//                .font(.caption)
//                .foregroundColor(.gray)
        
//        Zstack as Backgrounds
        VStack(spacing: 50){
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .foregroundColor(.white)
                    .font(.title)
            }
            Text("1")
                .foregroundColor(.white)
                .font(.title)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct HStackVStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStackVStackBootcamp()
    }
}



