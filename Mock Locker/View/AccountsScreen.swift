//
//  AccountsScreen.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/10/25.
//

import SwiftUI

struct AccountsScreen: View {
    var body: some View {
        VStack {
            Image("mockLockerLogo2")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            Text("Email")
                .font(.headline)
            TextField("Email Address", text: .constant(""))
                .padding()
            Text("Password")
                .font(.headline)
            SecureField("Password", text: .constant(""))
                .padding()
            Button(action: {}) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
        Spacer()
    }
}

#Preview {
    AccountsScreen()
}
