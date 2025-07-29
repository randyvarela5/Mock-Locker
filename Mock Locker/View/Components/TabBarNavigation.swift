//
//  TabBarNavigation.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/26/25.
//

import SwiftUI

struct TabBarNavigation: View {
    
    @StateObject var authManager = AuthManager()
    @StateObject var shoppingCartManager = ShoppingCartManager()
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
                .environmentObject(shoppingCartManager)
            Group{
                if authManager.isLoggedIn {
                    AccountScreenLoggedIn()
                        .environmentObject(authManager)
                        .environmentObject(shoppingCartManager)
                } else {
                    AccountsScreen()
                        .environmentObject(authManager)
                        .environmentObject(shoppingCartManager)
                }
            }
                .tabItem {
                    Image(systemName: "person.crop.circle"); Text("Accounts")
                }
                .tag(1)
                .environmentObject(shoppingCartManager)
            //Wrapped in NavStack for navigation. child view wrapped in NavLink
            NavigationStack {
                ShoppingCartEmpty(selectedTab: $selectedTab)
            }
                .tabItem {
                    Image(systemName: "cart"); Text("Checkout")
                }
                .tag(2)
                .environmentObject(shoppingCartManager)
            
            Text("About")
                
                .tabItem {
                    Image(systemName: "figure.wave"); Text("About")
                }
                .tag(3)
            // I dont think i need to pass this in here. test to see if we can remove
                .environmentObject(shoppingCartManager)
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
