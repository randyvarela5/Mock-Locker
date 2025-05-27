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
            VStack {
                HStack {
                    Image("referree")
                        .resizable()
                        .frame(width: 50, height: 45)
                    Spacer()
                    
                    Image(systemName: "cart")
                        .padding()
                        .foregroundStyle(.white)
                }
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.black)
                    TextField("Search", text: $searchText)
                    Image(systemName: "qrcode.viewfinder")
                        .foregroundStyle(.black)
                }
                .frame(width: 300, height: 10)
                .padding()
                .background(.white)
                .cornerRadius(20)
                
            }
            .padding()
            .background(.black)
            
            TabBarNavigation()
        }
    }
}

#Preview {
    HomePage()
}

