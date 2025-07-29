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
    var quantity: Int = 1
}

class ShoppingCartManager: ObservableObject {
    
    @Published var items: [ShoppingCartItem] = []

    func addShoeToCart(merchandiseID: UUID, shoeSize: String) {
        //check to see if what is being added, matches whats already in the cart, if it does, increase qty by 1, if it doesnt, add it as a new item
        if let existingIndex = items.firstIndex(where: { $0.merchandiseID == merchandiseID && $0.shoeSize == shoeSize}) {
            items[existingIndex].quantity += 1
        } else {
            let newItem = ShoppingCartItem(merchandiseID: merchandiseID, shoeSize: shoeSize)
            items.append(newItem)
        }
    }
}
