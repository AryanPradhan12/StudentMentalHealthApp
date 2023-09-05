//
//  StudentMentalHealthApp.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/09/2023.
//

import SwiftUI

@main
struct StudentMentalHealthApp: App {
    @StateObject var viewModel = AuthViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
