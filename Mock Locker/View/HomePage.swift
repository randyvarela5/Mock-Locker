//
//  HomePage.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/26/25.
//

import SwiftUI

struct HomePage: View {
    
    @State var searchText : String = ""
    
    var body: some View {
        VStack {
            HeaderView()
            
            ScrollView(.horizontal) {
                HStack(spacing : 16) {
                    ForEach(MerchandiseData.merchandise) { product in
                        ProductCard(product: product)
                        
                    }
                }
            }
            
            TabBarNavigation()
        }
    }
}

#Preview {
    HomePage()
}



