//
//  Project11_BookWormApp.swift
//  Project11-BookWorm
//
//  Created by suhail on 19/11/24.
//

import SwiftUI
import SwiftData

@main
struct Project11_BookWormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Book.self)

        }
    }
}
