//
//  TabView.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct Tab_View: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("1")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("2")
                }
            View3()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("3")
                }
        }.accentColor(.blue)
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.clear
            Text("View 1")
                .font(.largeTitle)
                .padding(.top, -20)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.blue
            Text("View 2")
                .font(.largeTitle)
                .padding(.top, -20)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct View3: View {
    var body: some View {
        ZStack {
            Color.green
            Text("View 3")
                .font(.largeTitle)
                .padding(.top, -20)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Tab_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_View()
    }
}
