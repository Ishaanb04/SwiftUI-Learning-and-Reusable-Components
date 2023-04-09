//
//  ListBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/17/23.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "Apple", "Orange", "Banana", "Peach"
    ]
    
    @State var veggies: [String] = [
        "Potato", "Carrot", "Tomato"
    ]
    var body: some View {
        NavigationView {
            List{
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: moveFruit)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("Fruits")
                }
                
                Section {
                    ForEach(veggies, id: \.self) { vegi in
                        Text(vegi)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: moveFruit)
                } header: {
                    Text("Veggies")
                }
//                .tint(.green)
            }
//            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
            
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    private func moveFruit(indexSet: IndexSet, index: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: index)
    }
    
    private func delete(at indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    private func add(){
        fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
