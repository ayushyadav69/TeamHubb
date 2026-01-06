//
//  TeamHubApp.swift
//  TeamHub
//
//  Created by Ayush yadav on 05/01/26.
//

import SwiftUI

@main
struct TeamHubApp: App {
    @State private var viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
        }
    }
}
