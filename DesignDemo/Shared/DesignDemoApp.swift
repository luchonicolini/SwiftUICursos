//
//  DesignDemoApp.swift
//  Shared
//
//  Created by Luciano Nicolini on 14/04/2022.
//

import SwiftUI

@main

struct DesignDemoApp: App {
    @StateObject var model = Model()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
