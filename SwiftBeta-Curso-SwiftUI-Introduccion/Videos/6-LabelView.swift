//
//  LabelView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        Label("Suscribiros a SwiftBeta",
              systemImage: "hand.thumbsup.fill")
                .labelStyle(TitleOnlyLabelStyle())
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
