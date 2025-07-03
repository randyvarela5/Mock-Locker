//
//  AuthManager.swift
//  Mock Locker
//
//  Created by Randy Varela on 7/3/25.
//

import Foundation
import FirebaseAuth

class AuthManager: ObservableObject {
    @Published var isLoggedIn = false
    @Published var currentUser: User?
    
    init() {
        // Check if user is already logged in
        if let user = Auth.auth().currentUser {
            self.isLoggedIn = true
            self.currentUser = user
        }
        
        // Listen for auth state changes
        Auth.auth().addStateDidChangeListener { _, user in
            DispatchQueue.main.async {
                self.isLoggedIn = user != nil
                self.currentUser = user
            }
        }
    }
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Sign up error: \(error.localizedDescription)")
            } else {
                print("User created successfully!")
            }
        }
    }
    
    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Sign in error: \(error.localizedDescription)")
            } else {
                print("User signed in successfully!")
            }
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
    }
}
