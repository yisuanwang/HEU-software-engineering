//
//  ComputerApp.swift
//  Computer
//
//  Created by 乙酸王 on 2023/6/4.
//

import SwiftUI

@main
struct ComputerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
