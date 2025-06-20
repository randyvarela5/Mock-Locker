//
//  HomePage.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/26/25.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                ScrollView {
                    VStack {
                        HStack {
                            Text("Shop all departments")
                                .font(.title3)
                            Spacer()
                            
                            Button{
                                print("Shop all departments pressed")
                            } label: {
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

#Preview {
    HomePage()
}




