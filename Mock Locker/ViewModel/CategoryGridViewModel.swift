//
//  CategoryGridViewModel.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/27/25.
//

import Foundation
import SwiftUI

class CategoryGridViewModel: ObservableObject {
    
    @Published var categoryProducts: [Merchandise] = []
    
    var categoryGridTitle: String {
        return "Top Selling Categories"
    }
    
    var gridColumns: [GridItem] {
        return Array(repeating: GridItem(.flexible()), count: 3)
    }
    
    var gridSpacing: CGFloat {
        return 6
    }
    
    init() {
        loadTopSellingCategories()
    }
    
    // Just using products 6-14 here to diff from product carousel.
    func loadTopSellingCategories() {
        categoryProducts = Array(MerchandiseData.merchandise[6...14])
    }
}
