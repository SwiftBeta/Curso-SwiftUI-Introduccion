//
//  fullScreenCover_sheet.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct fullScreenCover_sheet: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Image("swiftui")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("¡Suscríbete a SwiftBeta!")
                .bold()
                .font(.largeTitle)
                .padding(.horizontal, 16)
                .multilineTextAlignment(.center)
            Text("para aprender SwiftUI, Swift y Xcode")
                .font(.body)
                .padding(.vertical, 12)
            Button(action: { isPresented = true }, label: {
                Text("Suscribir")
                    .bold()
                    .foregroundColor(.white)
                    .padding(12)
                    .background(Color.blue)
                    .cornerRadius(12)
                    
            })
        }
        .padding(.bottom, 300)
        .fullScreenCover(isPresented: $isPresented,
                         onDismiss: { isPresented = false },
                         content: {
                            ZStack {
                                Color.blue.ignoresSafeArea()
                                Image("swiftbeta")
                                    .cornerRadius(50)
                                    .overlay(RoundedRectangle(cornerRadius: 50)
                                                .stroke(Color.white, lineWidth: 4))
                                    .padding(.top, -380)
                                Button(action: { isPresented = false }, label: {
                                    Text("¡Bienvenido a\n SwiftBeta! 🎉")
                                        .bold()
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                        .padding(12)
                                        .background(Color.blue)
                                        .cornerRadius(12)
                                        
                                })
                                .padding(.top, -270)
                            }
                            .onAppear {
                                print("¡Suscríbete a SwiftBeta!")
                            }
                         })
    }
}

struct fullScreenCover_sheet_Previews: PreviewProvider {
    static var previews: some View {
        fullScreenCover_sheet()
    }
}
