//
//  NavigationView_NavigationLink.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct NavigationView_NavigationLink: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Option Menu 1",
                               destination: Text("Some information"))
                NavigationLink("Option Menu 2",
                               destination: Button("Tap me!", action: {
                                print("Hello iOS Developer")
                               }))
                Text("Option Menu 3")
                Text("Option Menu 4")
            }
            .navigationBarItems(trailing: Button("Done", action: {
                print("NavigationView Button")
            }))
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarHidden(false)
        }
    }
}

struct NavigationView_NavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_NavigationLink()
    }
}
