//
//  ReduxView.swift
//  ReduxView
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct AppState {
    var names: [String] = ["Suscríbete a SwiftBeta", "Aprende SwiftUI"]
}

enum AppAction {
    case loadNames
}

func appReducer(action: AppAction, state: inout AppState) {
    switch action {
    case .loadNames:
        state.names.append(contentsOf: ["Aprende Swift", "Aprende Xcode"])
    }
}

final class AppStore: ObservableObject {
    @Published private(set) var appState: AppState
    private let reducer: (AppAction, inout AppState) -> Void
    
    init(initialState: AppState, reducer: @escaping (AppAction, inout AppState) -> Void) {
        self.appState = initialState
        self.reducer = reducer
    }
    
    func reduce(action: AppAction) {
        reducer(action, &appState)
    }
}


struct ReduxView: View {
    @StateObject var store: AppStore = AppStore(initialState: AppState(),
                                                reducer: appReducer)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.appState.names, id: \.self) { name in
                    Text(name)
                }
            }
            .toolbar(content: {
                Button("tap me!") {
                    store.reduce(action: .loadNames)
                }
            })
            .navigationTitle("Names")
        }
    }
}

struct ReduxView_Previews: PreviewProvider {
    static var previews: some View {
        ReduxView()
    }
}
