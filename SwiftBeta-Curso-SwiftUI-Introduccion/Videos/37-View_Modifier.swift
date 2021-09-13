//
//  View_Modifier.swift
//  View_Modifier
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct NewButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
    }
}

extension View {
    func newButtonModifier() -> some View {
        self.modifier(NewButtonModifier())
    }
}

struct View_Modifier: View {
    var body: some View {
        VStack {
            Text("¡Suscríbete a SwiftBeta! 🎉")
                .bold()
                .padding()
            Button("Vale me suscribo!") {
                print("Suscribir canal de Youtube SwiftBeta")
            }
            .newButtonModifier()
        }
    }
}

struct View_Modifier_Previews: PreviewProvider {
    static var previews: some View {
        View_Modifier()
    }
}
