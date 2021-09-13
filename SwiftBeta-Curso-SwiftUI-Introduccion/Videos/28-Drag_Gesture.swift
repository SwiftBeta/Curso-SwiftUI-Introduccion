//
//  Drag_Gesture.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct Drag_Gesture: View {
    @State var dragOffset: CGSize = .zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .offset(x: dragOffset.width, y: dragOffset.height)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        dragOffset = value.translation
                    })
                    .onEnded({ _ in
                        withAnimation(.spring()) {
                            dragOffset = .zero
                        }
                    })
            )
    }
}

struct Drag_Gesture_Previews: PreviewProvider {
    static var previews: some View {
        Drag_Gesture()
    }
}
