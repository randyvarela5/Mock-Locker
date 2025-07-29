//
//  ShoppingCartManager.swift
//  Mock Locker
//
//  Created by Randy Varela on 7/28/25.
//

import Foundation

class ShoppingCartManager: ObservableObject {
    
    
    // I need to change this to hold a UUID. using shoe name for now to get it working
    @Published var items: [String] = []

    func addShoeToCart(shoeName: String) {
        items.append(shoeName)
    }
}
