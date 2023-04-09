//
//  BackgroundAndOverlayBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/18/23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .frame(width: 100, height: 100, alignment: .center)
        ////            .padding()
        //            .background(
        ////                LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
        //                Circle()
        //                    .fill(.blue)
        ////                    .padding()
        //            )
        //            .frame(width: 120, height: 120, alignment: .center)
        //            .background(
        //                Circle()
        //                    .fill(.red)
        //            )
        
        //        Circle()
        //            .fill(.pink)
        //            .frame(width: 100, height: 100, alignment: .center)
        //            .overlay(
        //                Text("1")
        //                    .font(.largeTitle)
        //                    .foregroundColor(.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(.purple)
        //                    .frame(width: 110, height: 110)
        //            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .center
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .center
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [.pink, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 80, height: 80)
                    .shadow(color: .purple.opacity(0.40), radius: 10, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("1")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    
                            )
                            .shadow(color: .purple.opacity(0.40), radius: 10, x:5 ,y: 5)
                        , alignment: .bottomTrailing
                            
                        
                    )
                    
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
