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
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[6])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[7])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[8])
            }
            
            HStack {
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[9])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[10])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[11])
            }
            HStack {
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[12])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[13])
                CategoryGridCardTemplate(product: MerchandiseData.merchandise[14])
            }
        }
    }
}

#Preview {
    CategoryGrid()
}
