//
//  ProductCard.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/27/25.
//

import SwiftUI

struct ProductCard: View {
    
    let product : Merchandise
    
    var body: some View {
        VStack {
            Image(product.thumbnail)
            Text(product.name)
                .font(.headline)
                .padding(.bottom)
            Text(product.price, format: .currency(code: "USD"))
                .font(.title2)
                .foregroundStyle(.green)
        }
    }
}

#Preview {
    ProductCard(product: MerchandiseData.merchandise[0])
}
