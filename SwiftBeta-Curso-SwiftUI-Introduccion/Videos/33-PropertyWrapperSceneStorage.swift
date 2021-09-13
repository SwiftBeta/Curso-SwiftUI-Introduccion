//
//  PropertyWrapperSceneStorage.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct PropertyWrapperSceneStorage: View {
    @SceneStorage("tweet") private var tweet: String = ""
    @SceneStorage("toggle_publish_best_hour") private var togglePublishBestHour: Bool = false
    
    var body: some View {
        Form {
            TextEditor(text: $tweet)
                .frame(width: 300, height: 300)
            Toggle("Publicar a la mejor hora", isOn: $togglePublishBestHour)
                .padding()
            HStack {
                Spacer()
                Button(togglePublishBestHour ? "Publicar a la mejor hora 🍀" : "Publicar ahora 🐥") {
                    print("Publicando...")
                }
                Spacer()
            }
        }
    }
}

struct PropertyWrapperSceneStorage_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperSceneStorage()
    }
}
