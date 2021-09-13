//
//  CalculadoraView.swift
//  CalculadoraView
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct CalculadoraView: View {
    @StateObject var viewModel = CalculadoraViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            GeometryReader { proxy in
                VStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text(viewModel.textFieldValue)
                                .foregroundColor(.white)
                                .font(.system(size: 100, weight: .regular))
                                .frame(height: 100)
                                .padding(.trailing, 20)
                        }
                    }
                    VerticalButtonStack(
                        viewModel: viewModel,
                        data: Matrix.firstSectionData,
                        columns: Matrix.firstSectionGrid(proxy.size.width * 0.25),
                        width: proxy.size.width)
                    VerticalButtonStack(
                        viewModel: viewModel,
                        data: Matrix.secondSectionData,
                        columns: Matrix.secondSectionGrid(proxy.size.width * 0.25),
                        width: proxy.size.width)
                }
            }
            .background(Color.black)
        }
    }
}

struct CalculadoraView_Previews: PreviewProvider {
    static var previews: some View {
        CalculadoraView()
    }
}
