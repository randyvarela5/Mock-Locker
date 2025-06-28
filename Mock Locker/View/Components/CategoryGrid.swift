//
//  CategoryGrid.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/28/25.
//

import SwiftUI

struct CategoryGrid: View {
    
    @StateObject private var viewModel = CategoryGridViewModel()
    
    var body: some View {
        VStack() {
            Text(viewModel.categoryGridTitle)
                .padding()
                .font(.title.bold())
                .frame(maxWidth: .infinity, alignment: .leading)
            
            LazyVGrid(columns: viewModel.gridColumns, spacing: viewModel.gridSpacing) {
                ForEach(viewModel.categoryProducts) { product in
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
