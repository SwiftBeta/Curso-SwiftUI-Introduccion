//
//  Tap_Gesture.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct Tap_Gesture: View {
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100, height: 100)
                .onTapGesture(count: 1) {
                    print("View tapped")
                    count += 1
                }
            Text("Número de taps")
                .bold()
                .font(.largeTitle)
                .padding(.top, 20)
            Text("\(count)")
                .underline()
                .bold()
                .foregroundColor(.green)
                .padding(.top, 12)
                .font(.system(size: 60))
        }.offset(y: -250)
        
    }
}

struct Tap_Gesture_Previews: PreviewProvider {
    static var previews: some View {
        Tap_Gesture()
    }
}
