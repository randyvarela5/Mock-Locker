//
//  AccountsScreenViewModel.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/27/25.
//

import Foundation
import SwiftUI

class AccountsScreenViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    var emailLabel: String {
        return "Email:"
    }
    
    var passwordLabel: String {
        return "Password"
    }
    
    var emailPlaceHolder: String {
        return "email"
    }
    
    var passwordPlaceHolder: String {
        return "password"
    }
    
    var forgotEmailText: String {
        return "Forgot email?"
    }
    
    var forgotPasswordText: String {
        return "Forgot password?"
    }
    
    var signInButtonText: String {
        return "Sign In"
    }
    
    var signUpPromptText: String {
        return "Already have an account? Sign Up!"
    }
    
    var registerButtonText: String {
        return "Register"
    }
}

