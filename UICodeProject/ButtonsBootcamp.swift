//
//  ButtonsBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/24/23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "This is the title"
    var body: some View {
        VStack {
            Text(title)
            Button("Button 1") {
                self.title = "Button 1 was pressed"
            }
            .tint(.red)
            
            Button {
                self.title = "Button 2 was pressed"
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color(.red)
                            .cornerRadius(25)
                            .shadow(color: .red.opacity(0.3), radius: 10, x: 0, y: 10)
                    )
                
            }
            
            Button {
                self.title = "Button 3 clicked"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            
            Button {
                self.title = "Button 4 was clicked"
            } label: {
                Text("Finish")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            }
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
