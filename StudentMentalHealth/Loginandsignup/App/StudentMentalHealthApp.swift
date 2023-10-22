//
//  StudentMentalHealthApp.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/09/2023.
//

import SwiftUI
import Firebase

@main
struct StudentMentalHealthApp: App {
    @StateObject var viewModel = AuthViewModel()
    init() {
        FirebaseApp.configure()
    }    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
