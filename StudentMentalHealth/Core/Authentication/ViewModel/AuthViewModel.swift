//
//  AuthViewModel.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 05/09/2023.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    init() {
        
    }
    func signIn(withEmail email: String, password: String) async throws {
        print("Sign in..")
    }
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        print("Create user")
    }
    func signOut() {
        
    }
    func deleteAccount() {
        
    }
    func fetchUser() async {
        
    }
}
