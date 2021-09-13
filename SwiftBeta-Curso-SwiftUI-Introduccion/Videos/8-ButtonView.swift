//
//  ButtonView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Suscríbete a SwiftBeta")
            }, label: {
                Text("Suscríbete".uppercased())
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
            Button(action: {
                print("Dale Like al video")
            }, label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 70, weight: .bold))
                    )
            })
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
