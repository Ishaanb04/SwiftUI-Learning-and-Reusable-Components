//
//  LazyVGridBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/23/23.
//

import SwiftUI

struct LazyVGridBootCamp: View {
    
    let columns: [GridItem] = [
        //        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
        //        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil),
        //        GridItem(.flexible(), spacing: nil, alignment: nil)
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(100), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil)
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        //        ScrollView{
        //            Rectangle()
        //                .fill(Color.white)
        //                .frame(height: 400)
        //            LazyVGrid(columns: columns){
        //                ForEach(0..<50) { index in
        //                    Rectangle()
        //                        .frame(height: 150)
        //                }
        //            }
        //            .padding()
        //        }
        
        ScrollView{
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
                .cornerRadius(25)
                .padding(.horizontal)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ) {
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                ){
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                ){
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.red)
                            .frame(height: 150)
                    }
                }
            }
            .padding()
            
            
        }
    }
}

struct LazyVGridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridBootCamp()
    }
}
