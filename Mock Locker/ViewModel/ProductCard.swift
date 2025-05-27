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
        VStack(alignment: .leading) {
            Image(product.thumbnail)
                .resizable()
                .frame(width: 150, height: 150)
            Text(product.brand)
                .font(.subheadline)
            Text(product.name)
                .font(.headline)
            Text(product.type)
                .font(.subheadline)
                .padding(.bottom, 5)
            Text(product.price, format: .currency(code: "USD"))
                .font(.title2)
                .foregroundStyle(.green)
        }
    }
}

#Preview {
    ProductCard(product: MerchandiseData.merchandise[0])
}
