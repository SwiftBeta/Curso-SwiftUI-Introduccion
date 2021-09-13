//
//  13-ProgressViewView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct ProgressViewView: View {
    @State var isLoading: Bool = false
    @State private var progress = 0.8
    
    var body: some View {
        VStack {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                .scaleEffect(8)
                .padding(.top, 40)
                .padding(.bottom, 94)
                
            HStack {
                Text("0%")
                    .bold()
                ProgressView(value: progress)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                Text("100%")
                    .bold()
            }.padding(.horizontal)
            HStack {
                Text("0%")
                    .bold()
                ProgressView("Progreso", value: 0.5)
                    .accentColor(.green)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                Text("100%")
                    .bold()
            }.padding(.horizontal)
            HStack {
                Text("0%")
                    .bold()
                ProgressView("Progreso", value: 0.1)
                    .accentColor(.red)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                Text("100%")
                    .bold()
            }.padding(.horizontal)
            Spacer()
        }.padding(.top, 32)
    }
}

struct ProgressViewView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewView()
    }
}
