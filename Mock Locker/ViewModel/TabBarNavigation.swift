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
            HomePage()
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
            let tabBarAppearance = UITabBarAppearance()
                tabBarAppearance.backgroundColor = UIColor.black
                
                // Set both standard and scrollEdge appearances
                UITabBar.appearance().standardAppearance = tabBarAppearance
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                
                // Keep your existing tint color
                UITabBar.appearance().unselectedItemTintColor = UIColor.white
        }
    }
}

#Preview {
    TabBarNavigation()
}
