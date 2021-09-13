//
//  PropertyWrapperState.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct PropertyWrapperState: View {
    @State var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("Counter \(counter)")
            Button("Incrementar Valor") {
                self.counter += 1
            }
        }
    }
}

struct PropertyWrapperState_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperState()
    }
}
