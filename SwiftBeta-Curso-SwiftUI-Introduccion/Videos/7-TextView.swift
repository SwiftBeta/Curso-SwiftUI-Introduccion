//
//  TextView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Suscribiros a SwiftBeta")
                    .font(.largeTitle)
                    .underline()
                    .foregroundColor(.red)
                + Text(" para aprender a programar")
                    .font(.body)
                    .foregroundColor(.blue)
                + Text(" SWIFTUI")
                    .font(.body)
                    .bold()
                + Text(" si te gusta el video puedes darle a LIKE")
                    .font(.headline)
                    .foregroundColor(.green)
            }.padding()
            Text("Suscribiros a SwiftBeta para aprender a programar SWIFTUI si te gusta el video puedes darle a LIKE")
                        .font(.largeTitle)
                        .underline()
                        .rotation3DEffect(.degrees(20),
                            axis: (x: 1, y: 0, z: 0))
                        .shadow(color: .gray, radius: 2, x: 0, y: 10)
                        .lineLimit(10)
                        .lineSpacing(10)
                        .padding()
                .offset(x: 20)
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
