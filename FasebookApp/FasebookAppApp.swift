//
//  FasebookAppApp.swift
//  FasebookApp
//
//  Created by macbro on 28/04/22.
//

import SwiftUI

@main
struct FasebookAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
