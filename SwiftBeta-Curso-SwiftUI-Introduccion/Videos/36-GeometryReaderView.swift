//
//  GeometryReaderView.swift
//  GeometryReaderView
//
//  Created by Home on 13/9/21.
//

import SwiftUI

let arrayOfNames = [
    "Suscríbete a SwiftBeta",
    "Aprende SwiftUI",
    "Aprende Swift",
    "Aprende Xcode",
    "Suscríbete al canal de Youtube",
    "SwiftUI",
    "Xcode",
    "Swift"
]

struct GeometryReaderView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(arrayOfNames, id: \.self) { name in
                    GeometryReader { proxy in
                        VStack {
                            Spacer()
                            Text("\(name)")
                                .font(.largeTitle)
                                .bold()
                                .frame(width: 370, height: 200)
                                .background(Color.green)
                                .cornerRadius(20)
                            Spacer()
                        }
                        .shadow(color: .gray, radius: 10, x: 0, y: 0)
                        .rotation3DEffect(
                            Angle(degrees: Double(proxy.frame(in: .global).minY) - 47),
                            axis: (x: 0.0, y: 10.0, z: 10.0)
                        )
                    }
                    .frame(width: 370, height: 300)
                }
            }
            .padding(.trailing)
        }
        .padding(.horizontal)
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
