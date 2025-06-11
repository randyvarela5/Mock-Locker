//
//  AccountsScreen.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/10/25.
//

import SwiftUI

struct AccountsScreen: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Image("mockLockerLogo2")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            Text("Email")
                .font(.headline)
            customTextField(placerHolderText: "email", inputText: $email)
                
        }
        Spacer()
    }
}

#Preview {
    AccountsScreen()
}

