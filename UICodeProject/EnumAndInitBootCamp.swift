//
//  EnumAndInitBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 2/19/23.
//

import SwiftUI

struct EnumAndInitBootCamp: View {
    let bgColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        switch fruit{
        case .Apples:
            self.title = "Apples"
            self.bgColor = .red
        case .Oranges:
            self.title = "Oranges"
            self.bgColor = .orange
        }
        self.count = count
    }
    
    enum Fruit{
        case Apples
        case Oranges
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("Apples")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(bgColor)
        .cornerRadius(25)
    }
}

struct EnumAndInitBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        EnumAndInitBootCamp(count: 55, fruit: .Oranges)
    }
}
