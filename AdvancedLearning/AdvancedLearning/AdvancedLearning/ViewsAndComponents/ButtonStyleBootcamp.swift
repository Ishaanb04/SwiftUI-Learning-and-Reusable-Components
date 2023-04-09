//
//  ButtonStyleBootcamp.swift
//  AdvancedLearning
//
//  Created by Ishaan Bhasin on 4/9/23.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    let scaledAmount: CGFloat
    
    init(scaledAmount: CGFloat) {
        self.scaledAmount = scaledAmount
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaledAmount : 1.0)
//            .brightness(configuration.isPressed ? 0.05 : 0)
            .opacity(configuration.isPressed ? 0.9 : 1.0)
    }
}

extension View{
    func withPressableStyle(scaledAmount: CGFloat = 0.9) -> some View{
        buttonStyle(PressableButtonStyle(scaledAmount: scaledAmount))
    }
}

struct ButtonStyleBootcamp: View {
    var body: some View {
        Button {
            print("Button Pressed")
        } label: {
            Text("Click Me")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(10)
                .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0.0, y: 10)
        }
//        .buttonStyle(PlainButtonStyle())
//        .buttonStyle(DefaultButtonStyle())
//        .buttonStyle(PressableButtonStyle(scaledAmount: 0.9))
        .withPressableStyle(scaledAmount: 0.9)
        .padding(40)

    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
