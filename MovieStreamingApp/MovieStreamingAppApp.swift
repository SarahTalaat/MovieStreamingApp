//
//  MovieStreamingAppApp.swift
//  MovieStreamingApp
//
//  Created by Sarah Talaat Ammar on 13/03/2026.
//

import SwiftUI
import CoreData

@main
struct MovieStreamingAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
