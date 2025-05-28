//
//  CategoryGridCardTemplate.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/28/25.
//

import SwiftUI

struct CategoryGridCardTemplate: View {
    
    let product : Merchandise
    
    var body: some View {
        VStack {
            Image(product.thumbnail)
                .resizable()
                .frame(width: 110, height: 110)
            Text(product.type)
                .font(.title3.bold())
        }
        .padding(6)
    }
}

#Preview {
    CategoryGridCardTemplate(product: MerchandiseData.merchandise[1])
}
