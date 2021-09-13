//
//  ListView.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct Device {
    let title: String
    let imageName: String
}

let house = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv")
]

let work = [
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Apple Watch", imageName: "applewatch")
]

struct ListView: View {
    var body: some View {
            List {
                Section(header: Text("Home")) {
                    ForEach(house, id: \.title) { option in
                        Label(option.title, systemImage: option.imageName)
                    }
                }
                Section(header: Text("Work")) {
                    ForEach(work, id: \.title) { option in
                        Label(option.title, systemImage: option.imageName)
                    }
                }
            }
            .listStyle(GroupedListStyle())
        }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
