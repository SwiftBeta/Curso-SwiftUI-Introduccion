//
//  PropertyWrapperEnvironmentObject.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

final class ViewModel: ObservableObject {
    @Published var counter: Int = 0
}

struct PropertyWrapperEnvironmentObject: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("Counter: \(viewModel.counter)")
                .bold()
                .font(.largeTitle)
            Text("View 1")
                .padding()
            PropertyWrapperEnvironmentObject_View2()
        }
        .environmentObject(viewModel)
    }
}

struct PropertyWrapperEnvironmentObject_View2: View {
    var body: some View {
        VStack {
            Text("View 2")
                .padding()
            PropertyWrapperEnvironmentObject_View3()
        }
    }
}

struct PropertyWrapperEnvironmentObject_View3: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("View 3")
                .padding()
            Button("Incrementar") {
                viewModel.counter += 1
            }
        }
    }
}

struct PropertyWrapperEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperEnvironmentObject()
    }
}
