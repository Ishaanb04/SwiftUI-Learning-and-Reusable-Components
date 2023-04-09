//
//  ToggleBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var isToggleOn: Bool = true
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                Text(isToggleOn ? "Online" : "Offline" )
            }
            
            Toggle(isOn: $isToggleOn) {
                Text("Label")
            }
            .padding()
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            Spacer()
        }
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
