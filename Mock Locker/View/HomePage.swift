//
//  HomePage.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/26/25.
//

import SwiftUI

struct HomePage: View {
    
    @Binding var selectedTab : Int
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView(selectedTab: $selectedTab)
                ScrollView {
                    VStack {
                        HStack {
                            NavigationLink(destination: ShopAllBrandsListView()){
                            Text("Shop all brands")
                                .font(.title3)
                                .foregroundStyle(.black)
                            Spacer()
                            
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.black)
                            }
                        }
                        .padding()
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                        HeroSlideshow()
                            .frame(height: 280)
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .padding(.vertical, 16)
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
}

//#Preview {
//    HomePage()
//}




