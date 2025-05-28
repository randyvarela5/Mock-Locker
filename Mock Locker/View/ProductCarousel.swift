//
//  ProductCarousel.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/28/25.
//

import SwiftUI

struct ProductCarousel: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Popular Items")
                .padding()
                .font(.title.bold())
            ScrollView(.horizontal) {
                HStack(spacing : 16) {
                    
                    ForEach(MerchandiseData.merchandise) { product in
                        ProductCard(product: product)
                        
                    }
                }
            }
        }

    }
}

#Preview {
    ProductCarousel()
}
