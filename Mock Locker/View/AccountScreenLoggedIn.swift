//
//  AccountScreenLoggedIn.swift
//  Mock Locker
//
//  Created by Randy Varela on 7/3/25.
//

import SwiftUI

struct AccountScreenLoggedIn: View {
    
    @StateObject var authManager = AuthManager()
    
    var body: some View {
        VStack {
            Image("mockLockerLogo2")
                .resizable()
                .frame(width: 300, height: 300)
            Text("User is logged in")
                .font(.title)
                .foregroundStyle(.red)
                .fontWeight(.heavy)
            Button{
                authManager.signOut()
            } label: {
                Text("Sign Out")
                    .frame(width: 350, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .cornerRadius(25)
                
            }
        }
    }
}

#Preview {
    AccountScreenLoggedIn()
}
