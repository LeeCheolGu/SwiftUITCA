//
//  ContentView.swift
//  SwiftTCA
//
//  Created by 이철구 on 2022/05/10.
//

import SwiftUI
import CoreData
import ComposableArchitecture

struct ContentView: View {
    let store: Store<ContentState, ContentAction> = Store(
        initialState: ContentState(),
        reducer: ContentReducer,
        environment: ContentEnvironment.live
    )
    var body: some View {
        SwitchStore(self.store) {
            CaseLet(state: /ContentState.login, action: ContentAction.login) { store in
                LoginView(store: store)
            }
            CaseLet(state: /ContentState.main, action: ContentAction.main) { store in
                MainView(store: store)
            }
        }
    }
}





//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//    }
//}
