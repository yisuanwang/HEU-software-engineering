//
//  HomeWork2App.swift
//  HomeWork2
//
//  Created by 乙酸王 on 2023/6/2.
//

import SwiftUI

@main
struct HomeWork2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
