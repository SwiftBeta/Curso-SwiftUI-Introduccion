//
//  StepperView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct StepperView: View {
    @State var iPhoneCounter: Int = 1
    @State var macCounter: Int = 1
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Sección iPhone")) {
                    Stepper("iPhone \(iPhoneCounter)") {
                        iPhoneCounter += 1
                        print("[Incrementar] Número \(iPhoneCounter)")
                    } onDecrement: {
                        iPhoneCounter -= 1
                        print("[Decrementar] Número \(iPhoneCounter)")
                    }
                }
                Section(header: Text("Sección Mac")) {
                    Stepper("Mac \(macCounter)") {
                        macCounter += 1
                        print("[Incrementar] Número \(macCounter)")
                    } onDecrement: {
                        macCounter -= 1
                        print("[Decrementar] Número \(macCounter)")
                    }
                }
                HStack {
                    Spacer()
                    Button(action: {}, label: {
                        Text("Comprar")
                            .foregroundColor(.blue)
                    })
                }
            }.navigationTitle("Lista de la compra")
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
