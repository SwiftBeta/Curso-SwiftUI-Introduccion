//
//  ContextMenuView.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        Text("Aprende con SwiftBeta")
            .padding()
            .contextMenu(
                ContextMenu(menuItems: {
                    Button("SwiftUI") {
                        print("Quiero Aprender SwiftUI")
                    }
                    Button("Xcode") {
                        print("Quiero Aprender Xcode")
                    }
                    Button(action: {
                        print("Quiero Aprender Swift")
                    }, label: {
                        Label("Swift", systemImage: "iphone")
                    })
                    Button("Tips de Programación") {
                        print("Quiero Aprender SwiftUI")
                    }
                })).offset(y: -300)
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
