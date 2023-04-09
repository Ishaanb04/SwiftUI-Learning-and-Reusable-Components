//
//  ColorPickerBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var bgColor: Color = .red
    var body: some View {
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select A Color", selection: $bgColor, supportsOpacity: true)
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .background(content: {
                    Color.black
                        .cornerRadius(10)
                })
                .padding()
        }
        
        
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
