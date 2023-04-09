//
//  StateBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/16/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var bgColor: Color = Color.green
    @State var myTitle: String = "Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("\(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button 1"){
                        bgColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2"){
                        bgColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
