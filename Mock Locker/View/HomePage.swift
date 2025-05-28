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
            
            ProductCarousel()
            
            //CategoryGrid()
            
            TabBarNavigation()
        }
    }
}

#Preview {
    HomePage()
}




