//
//  ProductDetailsPageViewModel.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/25/25.
//

import Foundation
import SwiftUI

class ProductDetailsPageViewModel: ObservableObject {
    @Published var merchandise : Merchandise
    
    var formattedPrice : String {
        return "$\(merchandise.price)"
    }
    
    var imageURL : URL? {
        return URL(string: merchandise.imageURL)
    }
    
    var shoeDescription: String {
        return merchandise.description
    }
    
    // I need to add mock item numbers into the data model. hard code for now
    var itemNumber: String {
            return "Item # 990347679"
        }
    // Same with this one. just added these on the fly because thats how sams club has it. we could remove it and add something else instead
    var modelNumber: String {
            return "Model # U328JMB-001"
        }
    
    var availableSizes: [String] {
        return merchandise.size
    }
    
    init(merchandise: Merchandise) {
        self.merchandise = merchandise
    }
}
