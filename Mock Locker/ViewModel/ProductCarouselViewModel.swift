//
//  ProductCarouselViewModel.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/27/25.
//

import Foundation
import SwiftUI

class ProductCarouselViewModel: ObservableObject {
    @Published var merchandise: [Merchandise] = []
    
    var productCarouselTitle: String {
        return "Popular Items"
    }
    
    init() {
        loadPopularItems()
    }
    
    func loadPopularItems() {
        merchandise = MerchandiseData.merchandise
    }
}
