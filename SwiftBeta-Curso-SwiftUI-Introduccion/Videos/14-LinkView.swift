//
//  LinkView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        Link(destination: URL(string: "https://www.swiftbeta.com")!, label: {
            Label("Aprende SwiftUI", systemImage: "swift")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(12)
        })
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
