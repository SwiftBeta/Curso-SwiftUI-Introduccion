//
//  AlertView.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct AlertView: View {
    @State var isPresented: Bool = false
    @State var alertMessage: String = "Hola"
    
    var body: some View {
        VStack {
            Text("Suscríbete a SwiftBeta")
                .padding()
            Button("Aceptar") {
                isPresented = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isPresented = false
                }
            }
        }
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text($alertMessage.wrappedValue),
                  message: Text("Cada semana sacamos nuevo video"),
                  primaryButton: .default(Text("Aceptar"),
                                                      action: {
                                                        print("Button tapped")
                                                      }),
                  secondaryButton: .destructive(Text("Cancelar")))
        })
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
