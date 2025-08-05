//
//  ShoppingCartItemsView.swift
//  Mock Locker
//
//  Created by Randy Varela on 8/4/25.
//

import SwiftUI


struct ShoppingCartItemsView: View {
    
    @EnvironmentObject var shoppingCartManager: ShoppingCartManager
    
    private var cartTotal: Double {
        shoppingCartManager.items.reduce(0) { total, cartItem in
            if let merchandise = MerchandiseData.merchandise.first(where: { $0.id == cartItem.merchandiseID }) {
                return total + (merchandise.price * Double(cartItem.quantity))
            }
            return total
        }
    }
    
    var body: some View {
        List {
            ForEach(shoppingCartManager.items, id: \.merchandiseID) { cartItem in
                if let merchandise = MerchandiseData.merchandise.first(where: {$0.id == cartItem.merchandiseID}) {
                    CartItemRow(merchandise: merchandise, shoppingCartItem: cartItem)
                }
            }
        }
        
        // Total section
        VStack {
            Divider()
            HStack {
                Text("Total:")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("$\(cartTotal, specifier: "%.2f")")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
        }
        .background(Color(UIColor.systemGray6))
        
        
        .navigationTitle("🛒Shopping Cart")
        
        VStack {
            Button {
                print("Buy Now button pressed")
                
            } label: {
                HStack {
                    Text("Buy Now")
                    Image(systemName: "cart")
                }
                .frame(width: 350, height: 50)
                .background(.green)
                .foregroundColor(.white)
                .font(.title3)
                .fontWeight(.bold)
                .cornerRadius(25)
            }
            
            
            Button {
                print("Remove all items button pressed")
                
            } label: {
                Text("Remove All Items From Cart")
            }
            .frame(width: 350, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .font(.title3)
            .fontWeight(.bold)
            .cornerRadius(25)
        }
        .padding()
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
            Spacer()
            Image(systemName: "trash")
                .resizable()
                .frame(width: 30, height: 30)
        }
    }
    
}

//#Preview {
//    ShoppingCartItemsView()
//}
