//
//  TransitionsBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/16/23.
//

import SwiftUI

struct TransitionsBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showView ? 1.0 : 0.0)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .bottom)))
                    .animation(.easeInOut, value: showView)
//                    .transition(AnyTransition.scale.animation(Animation.easeIn))
//                    .transition(AnyTransition.opacity.animation(Animation.easeIn))
                    
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionsBootcamp()
    }
}
