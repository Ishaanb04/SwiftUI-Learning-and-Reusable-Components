//
//  ContextMenuBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var bgColor: Color = .purple
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftfull Thinking")
                .font(.headline)
            Text("How to use context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(
            bgColor
                .cornerRadius(30)
        )
        .contextMenu {
            Button {
                bgColor = .red
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            Button {
                bgColor = .green
            } label: {
                Text("Report Post")
            }
            
            Button {
                bgColor = .yellow
            } label: {
                HStack{
                    Text("Button 3")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
