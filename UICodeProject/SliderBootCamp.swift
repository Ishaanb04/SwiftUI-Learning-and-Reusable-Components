//
//  SliderBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct SliderBootCamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var body: some View {
        VStack {
            Text("Rating")
            Text(
                String(format: "%.0f", sliderValue)
                //                "\(sliderValue)"
            )
            .foregroundColor(color)
            
            //            Slider(value: $sliderValue)
            //            Slider(value: $sliderValue, in: 1...5)
            //            Slider(value: $sliderValue,
            //                   in: 1...5,
            //                   step: 1.0)
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1.0,
                   onEditingChanged: { (_) in
                color = .green
            },
                   minimumValueLabel: Text("1"),
                   maximumValueLabel: Text("5"), label: {
                Text(verbatim: "GG")
            })
            .tint(.red)
        }
        .padding()
    }
}

struct SliderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootCamp()
    }
}
