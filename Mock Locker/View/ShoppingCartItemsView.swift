//
//  ShoppingCartItemsView.swift
//  Mock Locker
//
//  Created by Randy Varela on 8/4/25.
//

import SwiftUI


struct ShoppingCartItemsView: View {
    
    @EnvironmentObject var shoppingCartManager: ShoppingCartManager
    var body: some View {
        List {
            ForEach(shoppingCartManager.items, id: \.merchandiseID) { cartItem in
                if let merchandise = MerchandiseData.merchandise.first(where: {$0.id == cartItem.merchandiseID}) {
                    CartItemRow(merchandise: merchandise, shoppingCartItem: cartItem)
                }
            }
        }
        .navigationTitle("Shopping Cart Items")
    }
}

struct CartItemRow: View {
    let merchandise: Merchandise
    let shoppingCartItem: ShoppingCartItem
    
    var body: some View {
        HStack{
            Image(merchandise.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 4){
                Text(merchandise.name)
                    .font(.headline)
                    .lineLimit(2)
                
                Text(merchandise.brand)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Text("Shoe size: \(shoppingCartItem.shoeSize)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Text("$\(merchandise.price, specifier: "%.2f")")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.green)
            }
        }
    }
    
}

//#Preview {
//    ShoppingCartItemsView()
//}
