//
//  HomePage.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/26/25.
//

import SwiftUI

struct HomePage: View {
    
   // @State var searchText : String = ""
    
    var body: some View {
        VStack {
            HeaderView()
            ScrollView {
                VStack {
                    ProductCarousel()

                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .padding(.vertical, 16)
                    CategoryGrid()
                }
            }
        }
    }
}

#Preview {
    HomePage()
}




