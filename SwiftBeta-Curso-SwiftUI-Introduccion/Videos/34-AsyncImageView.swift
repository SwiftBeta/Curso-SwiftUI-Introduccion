//
//  AsyncImageView.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct AsyncImageView: View {
    private let url = URL(string: "https://placebear.com/1000/1000")
    
    var body: some View {
        if #available(iOS 15.0, *) {
            AsyncImage(url: url!) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding()
            } placeholder: {
                ProgressView()
            }
        } else {
            // Fallback on earlier versions
            Text("AsyncImage needs iOS 15")
        }
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
