//
//  AsyncImageBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/24/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    let url = URL(string: "https://picsum.photos/300")
    var body: some View {
        //        AsyncImage(url: url, content: { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 300, height: 300)
        //                .cornerRadius(20)
        //        }, placeholder: {
        //            ProgressView()
        //        })
        AsyncImage(url: url) { phase in
            switch phase{
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
