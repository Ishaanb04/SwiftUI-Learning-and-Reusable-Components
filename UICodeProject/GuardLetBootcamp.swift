//
//  GuardLetBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/22/23.
//

import SwiftUI

struct GuardLetBootcamp: View {
    @State var displayText: String?
    @State var isLoading: Bool = false
    @State var userId: String?
     
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding!")
                
                if let text = displayText{
                    Text(text)
                }
                
                if isLoading{
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    private func loadData() {
        if let userIdTemp = userId{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data. User Id is \(userIdTemp)"
                isLoading = false
            }
        } else{
            displayText = "Error There is no user id"
        }
        
    }
}

struct GuardLetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GuardLetBootcamp()
    }
}
