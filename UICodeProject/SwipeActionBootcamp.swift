//
//  SwipeActionBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/24/23.
//

import SwiftUI

struct SwipeActionBootcamp: View {
    @State var fruits: [String] = [
        "Apple", "Orange", "Banana", "Peach"
    ]
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing,allowsFullSwipe: true){
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(.red)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.yellow)
                    }
                    .swipeActions(edge: .leading) {
                        Button("Share") {
                            
                        }
                        .tint(.blue)
                    }
                //                    .onDelete(perform: delete)
            }
        }
        
        
    }
    
    private func delete(index: IndexSet){
        fruits.remove(atOffsets: index)
    }
}
struct SwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionBootcamp()
    }
}
