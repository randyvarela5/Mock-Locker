//
//  ShoppingCartEmpty.swift
//  Mock Locker
//
//  Created by Randy Varela on 7/4/25.
//

import SwiftUI

struct ShoppingCartEmpty: View {
    //Receives selectedTab Binding from parent view (TabBarNavigation)
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            Image(systemName: "cart")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(.black)
                .padding()
            Text("You don't have any items in your cart")
                .font(.headline)
                .fontWeight(.heavy)
            //Wrapped button in NavLink. Parent view must be wrapped in NavigationStack (Cart tab item)
            NavigationLink(destination: HomePage()) {
                Button{
                    //setting this to 0 navigates to first tag, which is HomeScreen
                    selectedTab = 0
                } label: {
                    Text("Show me some kicks")
                        .frame(width: 350, height: 50)
                        .background(.black)
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                        .cornerRadius(25)
                }
            }
        }
        
    }
}

//#Preview {
//    ShoppingCartEmpty(selectedTab: )
//}
