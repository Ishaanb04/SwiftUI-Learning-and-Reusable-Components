//
//  DarkmodeBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/22/23.
//

import SwiftUI

struct DarkmodeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20) {
                    Text("This text is primary")
                        .foregroundColor(.primary)
                    
                    Text("This text is secondary")
                        .foregroundColor(.secondary)
                    
                    Text("This text is black")
                        .foregroundColor(.black)
                    
                    Text("This text is white")
                        .foregroundColor(.white)
                    
                    Text("This text is red")
                        .foregroundColor(.red)
                    
                    Text("This text is Adaptive")
                        .foregroundColor(Color("AdaptiveColorSet"))
                    
                    Text("This text is locally Adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                    
                    
                }
                .navigationTitle("Dark Mode Bootcamp!!")
            }
        }
    }
}

struct DarkmodeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkmodeBootcamp()
        DarkmodeBootcamp()
            .preferredColorScheme(.dark)
    }
}
