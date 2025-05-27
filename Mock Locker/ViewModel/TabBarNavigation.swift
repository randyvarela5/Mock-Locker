//
//  TabBarNavigation.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/26/25.
//

import SwiftUI

struct TabBarNavigation: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Image(systemName: "house"); Text("Home")
                }
            Text("Scan")
                .tabItem {
                    Image(systemName: "barcode.viewfinder"); Text("Scan")
                }
            Text("Account")
                .tabItem {
                    Image(systemName: "person.crop.circle"); Text("Accounts")
                }
                .background(.white)
            Text("Checkout")
                .tabItem {
                    Image(systemName: "cart"); Text("Checkout")
                }
            Text("About")
                .tabItem {
                    Image(systemName: "questionmark.circle"); Text("About")
                }
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = UIColor.black
            UITabBar.appearance().unselectedItemTintColor = UIColor.white
        }
    }
}

#Preview {
    TabBarNavigation()
}
