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

            AccountsScreen()
                .tabItem {
                    Image(systemName: "person.crop.circle"); Text("Accounts")
                }
            Text("Checkout")
                .tabItem {
                    Image(systemName: "cart"); Text("Checkout")
                }
            Text("About")
                .tabItem {
                    Image(systemName: "figure.wave"); Text("About")
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
