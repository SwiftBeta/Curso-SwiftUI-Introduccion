//
//  ActionSheet.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct ActionSheetView: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("Suscríbete a SwiftBeta")
                .padding()
            Button("Aceptar") {
                isPresented = true
            }
        }
        .actionSheet(isPresented: $isPresented, content: {
            ActionSheet(title: Text("Aprende SwiftUI con SwiftBeta"),
                        message: Text("Elige la opción que quieras:"),
                        buttons: [.default(Text("SwiftUI"),
                                           action: {
                                            print("Aprende SwiftUI")
                                           }),
                                  .default(Text("Xcode")),
                                  .destructive(Text("Cancelar"))])
        })
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
