//
//  ExtractingFunctionBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/16/23.
//

import SwiftUI

struct ExtractingFunctionBootcamp: View {
    @State var bgColor: Color = Color.pink
    var body: some View {
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            // Content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            
        }
    }
    
    func buttonPressed(){
        bgColor = .yellow
    }
}

struct ExtractingFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingFunctionBootcamp()
    }
}
