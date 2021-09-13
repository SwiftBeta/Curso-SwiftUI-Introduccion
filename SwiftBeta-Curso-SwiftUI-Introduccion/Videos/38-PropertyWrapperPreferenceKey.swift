//
//  PropertyWrapperPreferenceKey.swift
//  PropertyWrapperPreferenceKey
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct CustomNavigationView<Content: View>: View {
    
    @State private var title: String = "Navigation View"
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .bold()
            GeometryReader { _ in
                ScrollView {
                    content
                }
            }
        }
        .padding(.horizontal)
        .onPreferenceChange(CustomTitleKey.self) { (value: CustomTitleKey.Value) in
            print("Value \(value)")
            title = value
        }
    }
}

// Preference Key

struct CustomTitleKey: PreferenceKey {
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct PropertyWrapperPreferenceKey: View {
    var body: some View {
        CustomNavigationView {
            VStack {
                Text("Suscríbete a SwiftBeta 🚀")
                    .padding()
                    .preference(key: CustomTitleKey.self, value: "SwiftBeta 1")
                Text("Aprende SwiftUI 📚")
                    .padding()
                    .preference(key: CustomTitleKey.self, value: "SwiftBeta 2")
            }
        }
    }
}

// View Modifier

struct CustomNavigationTitle: ViewModifier {
    
    private var title: String
    
    init(title: String) {
        self.title = title
    }
    
    func body(content: Content) -> some View {
        content
            .preference(key: CustomTitleKey.self, value: title)
    }
}

// Extensión

extension View {
    func customNavigationTitle(title: String) -> some View {
        modifier(CustomNavigationTitle(title: title))
    }
}

struct PropertyWrapperPreferenceKey_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperPreferenceKey()
    }
}
