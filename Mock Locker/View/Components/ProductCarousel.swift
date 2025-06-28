//
//  ProductCarousel.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/28/25.
//

import SwiftUI

struct ProductCarousel: View {
    
    @StateObject private var viewModel = ProductCarouselViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.productCarouselTitle)
                .padding()
                .font(.title.bold())
            ScrollView(.horizontal) {
                HStack(spacing : 16) {
                    
                    ForEach(viewModel.merchandise) { product in
                        NavigationLink(destination: ProductDetailsPage(merchandise: product)){
                            ProductCard(product: product)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }

    }
}

#Preview {
    ProductCarousel()
}
