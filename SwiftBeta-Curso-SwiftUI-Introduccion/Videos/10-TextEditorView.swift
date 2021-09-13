//
//  TextEditorView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct TextEditorView: View {
    @State var text = "Escribe algo..."
    @State var counter = 0
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .font(.title)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundColor(.blue)
                .padding()
                .onChange(of: text, perform: { value in
                    counter = value.count
                })
            Text("\(counter)")
                .foregroundColor(counter <= 280 ? .green : .red)
                .font(.largeTitle)
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
