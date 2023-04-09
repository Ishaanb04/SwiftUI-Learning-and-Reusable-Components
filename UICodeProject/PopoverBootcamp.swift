//
//  PopoverBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/17/23.
//


// Sheets
// Animation
// Transitions

import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button"){
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
//            Method 1: Sheets
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
//            Method 2:Transitions
//            if showNewScreen{
//                NewScreen()
//                    .padding(.top, 100)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring(), value: showNewScreen)
//            }
            
//            Method 3: Animation Offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var dismissScreen
    @Binding var showNewScreen: Bool
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button {
//                dismissScreen()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }

            
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
