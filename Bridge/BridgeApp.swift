//
//  BridgeApp.swift
//  Bridge
//
//  Created by Consultant on 10/2/22.
//

import SwiftUI

@main
struct BridgeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
