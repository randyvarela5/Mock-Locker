//
//  CategoryGrid.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/28/25.
//

import SwiftUI

struct CategoryGrid: View {
    
    //I have 20 items total, im iterating through items 6-14
    let categoryProducts = Array(MerchandiseData.merchandise[6...14])
    
    var body: some View {
        VStack() {
            Text("Top Selling Categories")
                .padding()
                .font(.title.bold())
                .frame(maxWidth: .infinity, alignment: .leading)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 6) {
                ForEach(categoryProducts) { product in
                    NavigationLink(destination: ProductDetailsPage(merchandise: product)) {
                        CategoryGridCardTemplate(product: product)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.horizontal)
        }
    }
}

//#Preview {
//    CategoryGrid()
//}
