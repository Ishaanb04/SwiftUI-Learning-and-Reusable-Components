//
//  TextEditorBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    var body: some View {
        NavigationView{
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.black)
                    .colorMultiply(.gray)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("SAVE".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background {
                            Color.blue
                                .cornerRadius(10)
                        }
                    
                }
                Text(savedText)
                Spacer()

            }
            .padding()
            .background(Color.green)
            .navigationBarTitle("This is the texteditor!")
            
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
