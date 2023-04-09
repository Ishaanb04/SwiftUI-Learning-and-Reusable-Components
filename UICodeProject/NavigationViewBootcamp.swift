//
//  NavigationViewBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/17/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Hello World",
                               destination: MyOtherScreen())
                Text("Hellp World!")
                Text("Hellp World!")
                Text("Hellp World!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {Image(systemName: "gear")})
                //            .navigationBarTitleDisplayMode(.automatic)
                    .tint(.red)
            )
            
        }
    }
}
struct MyOtherScreen: View{
    var body: some View{
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                NavigationLink("Click Here",
                               destination: Text("Third Screen"))
                Text("Hellp World 2")
                Text("Hellp World 2")
                Text("Hellp World 2")
            }
            .navigationTitle("Second Screen")
            //            .navigationBarHidden(true)
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
