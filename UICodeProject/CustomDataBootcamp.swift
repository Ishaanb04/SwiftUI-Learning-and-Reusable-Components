//
//  CustomDataBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/22/23.
//

import SwiftUI

struct userModel: Identifiable {
    let displayName: String
    let userName: String
    let followerCount: Int
    let id: String = UUID().uuidString
}

struct CustomDataBootcamp: View {
    
    @State var users: [userModel] = [
        userModel(displayName: "Ishaan", userName: "I_PLAY_OP", followerCount: 100),
        userModel(displayName: "Daksh", userName: "dak_123", followerCount: 20),
        userModel(displayName: "krish", userName: "Jr_1827", followerCount: 3)
    ]
    
    var body: some View {
        NavigationView{
            List{
                
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        Text(user.displayName)
                        Spacer()
                        VStack{
                            Text(user.userName)
                            Text("\(user.followerCount)")
                        }
                    }
                    .padding(.vertical, 10)
                }
//                ForEach(users, id: \.self) {user in
//                    HStack(spacing: 15) {
//                        Circle()
//                            .frame(width: 35, height: 35)
//
//                    }
//                    .padding(.vertical, 10)
//                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct CustomDataBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomDataBootcamp()
    }
}
