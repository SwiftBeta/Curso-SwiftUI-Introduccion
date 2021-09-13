//
//  StateVsBinding.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct StateVsBinding: View {
    @State var counter: Int = 0
    
    var body: some View {
        CounterView(counter: $counter)
    }
}

struct CounterView: View {
    @Binding var counter: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(counter)")
                .font(.largeTitle)
            Button("Incrementar") {
                counter += 1
            }
        }
    }
}

struct StateVsBinding_Previews: PreviewProvider {
    static var previews: some View {
        StateVsBinding()
    }
}
