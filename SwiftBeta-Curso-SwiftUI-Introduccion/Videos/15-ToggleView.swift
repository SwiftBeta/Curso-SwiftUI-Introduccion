//
//  ToggleView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct ToggleView: View {
    @State var isOn: Bool = false
    
    var body: some View {
        Form {
            Toggle("Suscríbete a SwiftBeta",
                   isOn: $isOn)
            HStack {
                Spacer()
                Text("\(isOn.description)".uppercased())
                    .foregroundColor(isOn ? .green : .black)
                    .bold()
                    .underline()
            }
            Section(header: Text("Quieres Aprender:")) {
                Toggle("SWIFTUI",
                       isOn: $isOn)
                Toggle("SWIFT",
                       isOn: $isOn)
                Toggle("XCODE",
                       isOn: $isOn)
            }
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
