//
//  TabviewBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/22/23.
//

import SwiftUI

struct TabviewBootcamp: View {
    @State var selectedTab: Int = 2
    
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    
    var body: some View {
        //        TabView(selection: $selectedTab) {
        //            HomeView(selectedTab: $selectedTab)
        //                .tabItem {
        //                    Image(systemName: "house.fill")
        //                    Text("Home")
        //                }
        //                .tag(0)
        //
        //            Text("Browse Tab".uppercased())
        //                .tabItem {
        //                    Image(systemName: "globe")
        //                    Text("Browse")
        //                }
        //                .tag(1)
        //
        //            Text("Profile tab".uppercased())
        //                .tabItem {
        //                    Image(systemName: "person.fill")
        //                    Text("Profile")
        //                }
        //                .tag(2)
        //        }
        //        .accentColor(.red)
        
        TabView {
            ForEach(icons, id: \.self) { element in
                Image(systemName: element)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    
            }
        }
        .background {
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), center: .center, startRadius: 5, endRadius: 300)
        }
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabviewBootcamp()
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.top)
            VStack{
                Button {
                    selectedTab = 2
                } label: {
                    Text("Got to Profile")
                        .font(.headline)
                        .padding()
                        .background {
                            Color.white
                                .cornerRadius(20)
                        }
                }
                
                
                Text("Home Tab")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
            
        }
        
    }
}
