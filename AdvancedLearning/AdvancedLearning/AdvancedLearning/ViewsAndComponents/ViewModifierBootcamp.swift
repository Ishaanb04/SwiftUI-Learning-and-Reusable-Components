//
//  ViewModifierBootcamp.swift
//  AdvancedLearning
//
//  Created by Ishaan Bhasin on 4/9/23.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier{
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}

extension View {
    func withDefaultButtonFormating(bgColor: Color = .blue) -> some View {
        self
            .modifier(DefaultButtonViewModifier(backgroundColor: bgColor))
    }
}

struct ViewModifierBootcamp: View {
    var body: some View {
        VStack(spacing: 10){
            Text("Hello World!")
                .withDefaultButtonFormating(bgColor: .pink)
            
            Text("Button 1")
                .withDefaultButtonFormating(bgColor: .green)
            
            Text("Button 2")
                .withDefaultButtonFormating(bgColor: .orange)
            
            Text("Button 2")
                .withDefaultButtonFormating()
        }
        .padding()
    }
}

struct ViewModifierBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierBootcamp()
    }
}
