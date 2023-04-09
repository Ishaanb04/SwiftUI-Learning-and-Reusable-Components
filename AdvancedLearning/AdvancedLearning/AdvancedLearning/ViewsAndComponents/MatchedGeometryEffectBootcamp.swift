//
//  MatchedGeometryEffectBootcamp.swift
//  AdvancedLearning
//
//  Created by Ishaan Bhasin on 4/9/23.
//

import SwiftUI

struct MatchedGeometryEffectBootcamp: View {
    @State private var isClicked: Bool = false
    @Namespace private var namespace
    
    var body: some View {
        VStack{
            if !isClicked{
                RoundedRectangle(cornerRadius: 25)
                    .matchedGeometryEffect(id: "rect", in: namespace)
                    .frame(width: 100, height: 100)
                
            }
            
            
            Spacer()
            
            if isClicked{
                RoundedRectangle(cornerRadius: 25)
                    .matchedGeometryEffect(id: "rect", in: namespace)
                    .frame(width: 300, height: 200)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .onTapGesture {
            withAnimation(.easeInOut){
                isClicked.toggle()
            }
        }
    }
}

struct MatchedGeometryExample2: View{
    @Namespace private var namespace
    let categories: [String] = ["Home", "Popular", "Saved"]
    @State private var selected: String = ""
    
    
    var body: some View{
        HStack{
            ForEach(categories, id: \.self){category in
                ZStack{
                    if selected == category{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red.opacity(0.5))
                            .matchedGeometryEffect(id: "tabbar", in: namespace)
                            
                    }
                    
                    Text(category)
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selected = category
                    }
                }
                
            }
        }
        .padding()
    }
}


struct MatchedGeometryEffectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        //        MatchedGeometryEffectBootcamp()
        MatchedGeometryExample2()
    }
}
