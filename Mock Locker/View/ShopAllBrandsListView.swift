//
//  ShopAllBrandsListView.swift
//  Mock Locker
//
//  Created by Randy Varela on 7/4/25.
//

import SwiftUI

struct ShopAllBrandsListView: View {
    
    private var uniqueBrands: [String] {
        Array(Set(MerchandiseData.merchandise.map {$0.brand})).sorted()
    }
    
    var body: some View {
        NavigationView {
            List(uniqueBrands, id: \.self) { brand in
                HStack{
                    Text(brand)
                        .font(.title)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .background(Color.red)
                .cornerRadius(8)
                .listRowInsets(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
                .listRowSeparator(.hidden)

                
                
            }
            .navigationTitle("Brands")
        }
    }
}

#Preview {
    ShopAllBrandsListView()
}
