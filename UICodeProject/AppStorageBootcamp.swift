//
//  AppStorageBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/24/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    @AppStorage("name") var currentUserName: String?
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name )
            }
            Button("Save".uppercased()) {
                let name = "Bhasin"
                currentUserName = name
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
