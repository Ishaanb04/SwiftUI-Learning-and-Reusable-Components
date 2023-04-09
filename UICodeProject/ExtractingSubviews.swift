//
//  ExtractingSubviews.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/16/23.
//

import SwiftUI

struct ExtractingSubviews: View {
    var body: some View {
        ZStack{
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            // Content Layer
            HStack{
                MyItem(title: "Apple", count: 10, color: .blue)
                MyItem(title: "Banana", count: 10, color: .yellow)
                MyItem(title: "Peach", count: 10, color: .green)
            }
            
        }
    }
}

struct ExtractingSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingSubviews()
    }
}

struct MyItem: View {
    var title: String
    var count: Int
    var color: Color
    
    var body: some View {
        VStack(){
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
