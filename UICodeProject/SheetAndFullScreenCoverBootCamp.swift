//
//  SheetAndFullScreenCoverBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/17/23.
//

import SwiftUI

struct SheetAndFullScreenCoverBootCamp: View {
    
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background {
                        Color.white.cornerRadius(10)
                    }
                
            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var dismissScreen
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                dismissScreen()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetAndFullScreenCoverBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetAndFullScreenCoverBootCamp()
//        SecondScreen()
    }
}
