//
//  IconsAndSymbols.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct IconsAndSymbols: View {
    var body: some View {
            Image(systemName: "moon.circle.fill")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
        }
}

struct IconsAndSymbols_Previews: PreviewProvider {
    static var previews: some View {
        IconsAndSymbols()
    }
}
