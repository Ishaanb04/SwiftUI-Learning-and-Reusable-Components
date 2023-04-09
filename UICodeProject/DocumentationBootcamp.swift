//
//  DocumentationBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/22/23.
//

import SwiftUI

struct DocumentationBootcamp: View {
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Hello")
                    ForEach(data, id: \.self) { name in
                        Text(name)
                            .font(.headline)
                    }
                }
                .navigationTitle("Documentation Bootcamp")
                .navigationBarItems(trailing: 
                                        Button("ALERT") {
                    showAlert.toggle()
                }
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the Alert!!")
                }
            }
            
        }
    }
    
    private func getAlert(text: String) -> Alert{
        return Alert(title: Text(text))
    }
}

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
