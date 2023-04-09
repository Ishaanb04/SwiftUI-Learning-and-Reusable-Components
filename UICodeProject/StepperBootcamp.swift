//
//  StepperBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100 + widthIncrement, height: 100)
                
            
            Stepper {
                Text("Stepper 2")
            } onIncrement: {
                // Increment
                incrementWidth(amount: 30)
            } onDecrement: {
                // Decrement
                incrementWidth(amount: -30)
            }
            .padding()
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            if (100 + widthIncrement + amount > 0){
                widthIncrement += amount
            }
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
