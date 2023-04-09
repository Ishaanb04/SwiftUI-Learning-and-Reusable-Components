//
//  ButtonStylesBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/24/23.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack{
            Button("Button 1"){
                
            }
            .frame(height: 55)
            .frame(width: .infinity)
            
            .buttonStyle(.plain)
            
            Button("Button 2"){
                
            }
            .frame(height: 55)
            .frame(width: .infinity)
            .controlSize(.mini)
            .buttonStyle(.bordered)
            
            Button("Button 3"){
                
            }
            .frame(height: 55)
            .frame(width: .infinity)
            .buttonStyle(.borderedProminent)
            
            Button("Button 4"){
                
            }
            .frame(height: 55)
            .frame(width: .infinity)
            .buttonStyle(.borderless)
            
            
        }
        .padding()
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}
