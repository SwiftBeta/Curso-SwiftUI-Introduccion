//
//  swipeActionsAndRefreshable.swift
//  swipeActionsAndRefreshable
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct SwipeDevice {
    let name: String
    let systemImage: String
}

let arrayOfDevices = [
    SwipeDevice(name: "iphone", systemImage: "iphone"),
    SwipeDevice(name: "ipad", systemImage: "ipad"),
    SwipeDevice(name: "pc", systemImage: "pc"),
    SwipeDevice(name: "4k", systemImage: "4k.tv"),
    SwipeDevice(name: "ipod", systemImage: "ipod"),
    SwipeDevice(name: "laptop", systemImage: "laptopcomputer")
]

struct swipeActionsAndRefreshable: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(arrayOfDevices, id: \.name) { device in
                    Label(device.name, systemImage: device.systemImage)
                        .swipeActions {
                            Button {
                                print("Favorito")
                            } label: {
                                Label("Favorito", systemImage: "star.fill")
                            }
                            .tint(.yellow)
                            Button {
                                print("Compartir")
                            } label: {
                                Label("Compartir", systemImage: "square.and.arrow.up")
                            }
                            .tint(.blue)
                        }
                        .swipeActions(edge: .leading) {
                            Button {
                                print("Borrar")
                            } label: {
                                Label("Borrar", systemImage: "trash.fill")
                            }
                            .tint(.red)
                        }
                }
            }
            .refreshable {
                print("Recargar información...")
            }
            .navigationTitle("Devices")
        }
    }
}

struct swipeActionsAndRefreshable_Previews: PreviewProvider {
    static var previews: some View {
        swipeActionsAndRefreshable()
    }
}
