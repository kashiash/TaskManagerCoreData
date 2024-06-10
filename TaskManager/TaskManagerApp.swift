//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Jacek Kosinski U on 25/05/2024.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    @StateObject var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
