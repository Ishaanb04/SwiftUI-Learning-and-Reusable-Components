//
//  PickerBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "1"
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack {
            HStack{
                Text("Age:")
                Text(selection)
                
            }
            
            Picker(selection: $selection) {
                ForEach(18..<20){age in
                    Text("\(age)").tag("\(age)")
                        .foregroundColor(.red)
                        .font(.headline)
                }
            } label: {
                Text("Picker")
            }
//            .pickerStyle(WheelPickerStyle())
//            .pickerStyle(MenuPickerStyle())
            .pickerStyle(SegmentedPickerStyle())
            
            .background {
                Color.gray
                    .opacity(0.3)
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal)
        
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
