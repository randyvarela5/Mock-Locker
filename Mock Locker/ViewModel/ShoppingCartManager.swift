//
//  ShoppingCartManager.swift
//  Mock Locker
//
//  Created by Randy Varela on 7/28/25.
//

import Foundation

struct ShoppingCartItem {
    let merchandiseID: UUID
    let shoeSize: String
    let quantity: Int = 1
}

class ShoppingCartManager: ObservableObject {
    
    @Published var items: [ShoppingCartItem] = []

    func addShoeToCart(merchandiseID: UUID, shoeSize: String) {
        let newItem = ShoppingCartItem(merchandiseID: merchandiseID, shoeSize: shoeSize)
        items.append(newItem)
    }
}
