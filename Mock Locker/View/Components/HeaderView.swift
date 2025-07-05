//
//  HeaderView.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/26/25.
//

import SwiftUI

struct HeaderView: View {
    @State var searchText : String = ""
    @Binding var selectedTab: Int

    var body: some View {
        VStack {
            ZStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Welcome to")
                            .font(.callout)
                            .foregroundStyle(.white)
                        Text("Mock Locker")
                            .font(.title3)
                            .foregroundStyle(.red)
                    }
                    Spacer()
                    NavigationLink(destination: ShoppingCartEmpty(selectedTab: $selectedTab)){
                        Image(systemName: "cart")
                            .padding()
                            .foregroundStyle(.white)
                    }
                }
                Image("newRefLogo2")
                    .resizable()
                    .frame(width: 50, height: 45)
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
    }
}

//#Preview {
//    HeaderView()
//}
