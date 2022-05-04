//
//  MultiplicationMaestroApp.swift
//  MultiplicationMaestro
//
//

import SwiftUI

@main
struct MultiplicationMaestroApp: App {
    /// - Tag: mm_app_level
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem({
                        Image(systemName: "person.fill.questionmark")
                        Text("Practice")
                    })
                ResultListView()
                    .tabItem({
                        Image(systemName: "eyes")
                        Text("History")
                    })
            }
        }
    }
}
