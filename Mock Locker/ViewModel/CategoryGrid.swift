//
//  CategoryGrid.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/28/25.
//

import SwiftUI

struct CategoryGrid: View {
    var body: some View {
        VStack() {
            Text("Top Selling Categories")
                .padding()
                .font(.title.bold())
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack {
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[0])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[1])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[2])
            }
            
            HStack {
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[3])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[4])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[5])
            }
            HStack {
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[18])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[19])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[16])
            }
        }
    }
}

#Preview {
    CategoryGrid()
}
