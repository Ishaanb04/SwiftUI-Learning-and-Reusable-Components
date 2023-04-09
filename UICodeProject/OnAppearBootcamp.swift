//
//  OnAppearBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/22/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText: String = "Start Text."
    @State var count: Int = 0
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 100)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                            .onDisappear{
                                count -= 1
                            }
                    }
                }
                Text(myText)
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = "This is my new Text!"
                }
            })
            .navigationTitle("On Appear Count: \(count)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
