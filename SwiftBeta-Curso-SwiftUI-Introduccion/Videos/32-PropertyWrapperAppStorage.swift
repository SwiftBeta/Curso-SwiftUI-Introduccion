//
//  32-PropertyWrapperAppStorage.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct PropertyWrapperAppStorage: View {
    @State var name: String = ""
    @AppStorage("appStorageName") var appStorageName: String = ""
    
    var body: some View {
        Form {
            TextField("Username", text: $name)
            HStack {
                Spacer()
                Button("Guardar") {
                    // Si sabes que ese valor existe dentro de UserDefaults
                    print(UserDefaults.standard.string(forKey: "appsStorageName")!)
                    
                    // Si no existe pero quieres retornar un valor por defecto
                    print(UserDefaults.standard.string(forKey: "appsStorageName") ?? "")
                    
                    // Sacando el valor de un opcional con map
                    UserDefaults.standard.string(forKey: "appsStorageName").map { print($0) }
                    
                    // usando if let
                    if let appStorageName = UserDefaults.standard.string(forKey: "appsStorageName") {
                        print(appStorageName)
                    }
                    
                    // usando guard
                    guard let appStorageName = UserDefaults.standard.string(forKey: "appsStorageName") else {
                        return
                    }
                    print(appStorageName)
                }
                .padding()
                Spacer()
            }
        }
        .onAppear {
            name = appStorageName
        }
    }
}

struct PropertyWrapperAppStorage_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperAppStorage()
    }
}
