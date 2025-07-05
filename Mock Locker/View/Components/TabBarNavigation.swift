//
//  TabBarNavigation.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/26/25.
//

import SwiftUI

struct TabBarNavigation: View {
    
    @StateObject var authManager = AuthManager()
    //Track current tab to make sure tab changes with naviggation
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomePage(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house"); Text("Home")
                }
            //Each tab is assigned a tag which we leverage for selectedTab
                .tag(0)
            Group{
                if authManager.isLoggedIn {
                    AccountScreenLoggedIn()
                        .environmentObject(authManager)
                } else {
                    AccountsScreen()
                        .environmentObject(authManager)
                }
            }
                .tabItem {
                    Image(systemName: "person.crop.circle"); Text("Accounts")
                }
                .tag(1)
            //Wrapped in NavStack for navigation. child view wrapped in NavLink
            NavigationStack {
                ShoppingCartEmpty(selectedTab: $selectedTab)
            }
                .tabItem {
                    Image(systemName: "cart"); Text("Checkout")
                }
                .tag(2)
            Text("About")
                
                .tabItem {
                    Image(systemName: "figure.wave"); Text("About")
                }
                .tag(3)
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
