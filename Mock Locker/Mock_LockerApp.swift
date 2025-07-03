//
//  Mock_LockerApp.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/23/25.
//

import SwiftUI
import FirebaseCore

@main
struct Mock_LockerApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            TabBarNavigation()
        }
    }
}
