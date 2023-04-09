//
//  AnyTransitions.swift
//  AdvancedLearning
//
//  Created by Ishaan Bhasin on 4/9/23.
//

import SwiftUI

struct RotateViewModifier: ViewModifier{
    let rotation: Double
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: rotation))
            .offset(
                x: rotation != 0 ? UIScreen.main.bounds.width : 0,
                y: rotation != 0 ? UIScreen.main.bounds.height : 0
            )
    }
}

extension AnyTransition{
    static var rotating: AnyTransition{
        return AnyTransition.modifier(active: RotateViewModifier(rotation: 180), identity: RotateViewModifier(rotation: 0))
    }
    
    static func rotating(rotation: Double) -> AnyTransition{
        modifier(active: RotateViewModifier(rotation: rotation), identity: RotateViewModifier(rotation: 0))
    }
    
    static var rotateOn: AnyTransition{
        asymmetric(insertion: .rotating, removal: .move(edge: .leading))
    }
}

struct AnyTransitionsBootcamp: View {
    @State private var showRectangle: Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            
            if showRectangle{
//                RoundedRectangle(cornerRadius: 25)
                ViewModifierBootcamp()
                    .frame(width: 250, height: 350)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                //                    .modifier(RotateViewModifier(rotation: 10))
//                    .transition(.rotating(rotation: 360))
                    .transition(.rotateOn)
            }
            
            Spacer()
            
            Text("Click Me!")
                .withDefaultButtonFormating()
                .padding(.horizontal, 40)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        showRectangle.toggle()
                    }
                }
            
        }
    }
}

struct AnyTransitions_Previews: PreviewProvider {
    static var previews: some View {
        AnyTransitionsBootcamp()
    }
}
