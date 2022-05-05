//
//  MultiplicationMaestroApp.swift
//  MultiplicationMaestro
//
//

import SwiftUI

@main
struct MultiplicationMaestroApp: App {
    
    @State var results: [Result] = []
    
    /// - Tag: mm_app_level
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView(results: $results)
                    .tabItem({
                        Image(systemName: "person.fill.questionmark")
                        Text("Practice")
                    })
                ResultListView(results: $results)
                    .tabItem({
                        Image(systemName: "eyes")
                        Text("History")
                    })
            }
        }
    }
}
