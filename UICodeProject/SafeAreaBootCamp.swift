//
//  SafeAreaBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/23/23.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        //        ZStack {
        //            // Background
        //            Color(.red)
        //                .edgesIgnoringSafeArea(.all)
        //            // Foreground
        //
        //            VStack {
        //                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //                Spacer()
        //            }
        //            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        ////            .background(.green)
        //
        //        }

        ZStack {
            Color(.red)
                .ignoresSafeArea(.all)
            
            ScrollView{
                VStack {
                    Text("Title Goes here!")
                        .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
        }
    }
}

struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
        
    }
}
