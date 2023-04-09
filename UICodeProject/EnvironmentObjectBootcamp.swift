//
//  EnvironmentObjectBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/24/23.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "Apple Watch", "iPad", "Mac"])
    }
}

struct EnvironmentObjectBootcamp: View {
    @StateObject var vm: EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(vm.dataArray, id: \.self) {data in
                    NavigationLink {
                        DetailView(selectedItem: data)
                    } label: {
                        Text(data)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(vm)
    }
}

struct DetailView: View{
    let selectedItem: String
    
    var body: some View{
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background {
                        Color.white
                            .cornerRadius(25.0)
                    }
            }

            
        }
    }
}

struct FinalView: View{
    @EnvironmentObject var vm: EnvironmentViewModel
    var body: some View{
        ZStack{
            LinearGradient(colors: [Color.blue, Color.purple],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                VStack(spacing: 20) {
                    ForEach(vm.dataArray, id: \.self){ data in
                        Text(data)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
