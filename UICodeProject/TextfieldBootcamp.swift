//
//  TextfieldBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct TextfieldBootcamp: View {
    @State var dataArray: [String] = []
    @State var textFieldText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type Something....", text: $textFieldText)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("SAVE")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue.cornerRadius(10) : Color.gray.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                
                ForEach(dataArray, id: \.self){text in
                    Text(text)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Text Field Bootcamp!")
            
        }
        
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3{
            return true
        }
        return false
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
