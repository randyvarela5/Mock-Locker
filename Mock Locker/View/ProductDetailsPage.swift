//
//  ProductDetailsPage.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/19/25.
//

import SwiftUI

struct ProductDetailsPage: View {
    
    let merchandise: Merchandise
    
    var body: some View {
        VStack{
            HStack {
                Text(merchandise.name)
                    .font(.title)
                Image(systemName: "square.and.arrow.up")
            }
            HStack {
                Text("Item # 990347679")
                    .font(.caption2)
                Text("Model # U328JMB-001")
                    .font(.caption2)
            }
            Image(merchandise.thumbnail)
                .resizable()
                .frame(width: 300, height: 300)
            Text("$\(merchandise.price, specifier: "%.2f")")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.green)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Item Details")
        .toolbarBackground(Color.black, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Button(action: {
                        print("Search button pressed")
                    }) {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                    
                    Button(action: {
                        print("Shopping cart pressed")
                    }) {
                        Image(systemName: "cart")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                }
            }
        }
        Spacer()
    }
}

//#Preview {
//    ProductDetailsPage(merchandise: MerchandiseData.merchandise[0])
//}
