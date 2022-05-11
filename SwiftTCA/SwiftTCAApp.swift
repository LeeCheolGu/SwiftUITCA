//
//  SwiftTCAApp.swift
//  SwiftTCA
//
//  Created by 이철구 on 2022/05/10.
//

import SwiftUI

@main
struct SwiftTCAApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
