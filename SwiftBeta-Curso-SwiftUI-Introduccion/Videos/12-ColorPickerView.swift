//
//  ColorPickerView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct ColorPickerView: View {
    @State var color: Color = .blue
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(color)
                .frame(width: 300, height: 60)
            ColorPicker("Selecciona un Color",
                        selection: $color)
            Spacer()
        }.padding(60)
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
