//
//  2-StacksView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        List {
            VStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Siguiendo")
                        .font(.largeTitle)
                        .bold()
                    Text("CANALES RECOMENDADOS")
                        .foregroundColor(.gray)
                    HStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: 118, height: 68)
                        VStack(alignment: .leading) {
                            HStack {
                                Circle()
                                    .foregroundColor(.blue)
                                    .frame(width: 18, height: 18)
                                Text("username")
                                    .font(.headline)
                            }
                            Text("streaming de programación...")
                                .foregroundColor(.gray)
                            Text("Solo Hablando")
                                .foregroundColor(.gray)
                        }
                    }
                }
                ZStack() {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Siguiendo")
                            .font(.largeTitle)
                            .bold()
                        Text("CANALES RECOMENDADOS")
                            .foregroundColor(.gray)
                        HStack {
                            Rectangle()
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .frame(width: 118, height: 68)
                            VStack(alignment: .leading) {
                                HStack {
                                    Circle()
                                        .foregroundColor(.blue)
                                        .frame(width: 18, height: 18)
                                    Text("username")
                                        .font(.headline)
                                }
                                Text("streaming de programación...")
                                    .foregroundColor(.gray)
                                Text("Solo Hablando")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    Text("Suscribiros a SwiftBeta")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.red)
                        .underline()
                        .background(Color.black)
                        .rotationEffect(.degrees(-20))
                }
            }
        }
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

