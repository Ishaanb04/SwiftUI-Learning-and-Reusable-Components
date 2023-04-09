//
//  ViewModelBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/22/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let name: String
    let count: Int
    let id: String = UUID().uuidString
}

class FruitViewModel: ObservableObject{
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 10)
        let fruit2 = FruitModel(name: "Peach", count: 11)
        let fruit3 = FruitModel(name: "Watermelon", count: 21)
        let fruit4 = FruitModel(name: "Blueberry", count: 12)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false
        }
        
    }
    
    func delete(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    //    @State var fruitArray: [FruitModel] = [
    //        FruitModel(name: "Apple", count: 5)
    //    ]
    
    
    // @State Object -> On creation, first time
    // @ObservedObject -> Use this on subviews
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading {
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) {fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.delete)
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: {
                RandomScreen(fruitViewModel: fruitViewModel)
            }, label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            }))
        }
    }
}


struct RandomScreen: View{
    @ObservedObject var fruitViewModel: FruitViewModel
    @Environment(\.dismiss) var dismiss
    var body: some View{
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                ForEach(fruitViewModel.fruitArray){fruit in
                    Text(fruit.name)
                }
            }
            
        }
    }
}
struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
