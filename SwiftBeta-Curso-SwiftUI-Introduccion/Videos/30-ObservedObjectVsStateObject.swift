//
//  ObservedObjectVSStateObject.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct ObservedObjectVsStateObject: View {
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("Contador: \(counter)")
                .bold()
                .font(.largeTitle)
                .padding()
            Button("Incrementar Contador") {
                counter += 1
            }
            ListVideos()
            Spacer()
        }
    }
}

struct ListVideos: View {
    @StateObject private var videoViewModel = VideoViewModel()
    
    var body: some View {
        NavigationView {
            List(videoViewModel.videosModel, id: \.self) { video in
                Text(video)
            }
            .navigationTitle("SwiftBeta Videos")
            .navigationBarItems(leading:
                Button("Añadir", action: videoViewModel.addMoreTopics)
            )
        }
    }
}

struct RemoveVideos: View {
    @ObservedObject var videoViewModel: VideoViewModel
    
    var body: some View {
        Text("SwiftBeta Remove Video")
    }
}

final class VideoViewModel: ObservableObject {
    @Published var videosModel: [String] = []
    
    init() {
        videosModel = ["Aprende SwiftUI",
                       "Aprende Xcode",
                       "Aprende Swift"]
    }
    
    func addMoreTopics() {
        videosModel.append("Aprende CI/CD")
        videosModel.append("Aprende Git")
    }
}

struct ObservedObjectVsStateObject_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectVsStateObject()
    }
}
