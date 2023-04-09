//
//  BindingPropertyWrapper.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/16/23.
//

import SwiftUI

struct BindingPropertyWrapper: View {
    @State var bgColor: Color = .green
    var body: some View {
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            ButtonView(bgColor: $bgColor)

        }
    }
}

struct BindingPropertyWrapper_Previews: PreviewProvider {
    static var previews: some View {
        BindingPropertyWrapper()
    }
}

struct ButtonView: View {
    @Binding var bgColor: Color
    @State var buttonColor: Color = .blue
    var body: some View {
        Button {
            bgColor = .orange
            buttonColor = .pink
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
