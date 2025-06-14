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
            HStack {
                Text("Email")
                    .font(.headline)
                Spacer()
            }
            .padding(.horizontal)
            customTextField(placerHolderText: "email", inputText: $email)
                .padding(.top, -20)
            
            HStack {
                Text("Password")
                    .font(.headline)
                Spacer()
            }
            .padding(.horizontal)
            customTextField(placerHolderText: "Password", inputText: $password)
                .padding(.top, -20)
            
            HStack{
                Text("Forgot email?")
                Spacer()
                Text("Forgot password?")
            }
            .padding()
            
            Button{
                print("Sign In button pressed")
            } label: {
                Text("Sign In")
            }
            .frame(width: 350, height: 50)
            .background(.black)
            .foregroundColor(.white)
            .font(.title3)
            .fontWeight(.bold)
            .cornerRadius(25)
            
            Text("Already have an account? Sign Up!")
                .padding(.top)
            
            Button {
                print("Register your account pressed")
            } label: {
                Text("Register")
                    .font(.title3)
                    .fontWeight(.bold)
            }
            .frame(width: 350, height: 50)
            .background(.white)
            .foregroundColor(.black)
            .cornerRadius(25)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.black, lineWidth: 2)
            )
            
            Rectangle()
                .fill(Color.gray.opacity(0.5))
                .frame(width: 350, height: 1)
                .padding()
            
            Text("Dont like this app? I have others!")
                .font(.callout)
            Link("Check out my portfolio", destination: URL(string: "https://Randyvarela.com")!)
            
            Spacer()
        }
        //Commenting this spacer as a reminder that this Spacer caused the duplicate tabs issue I spent hours trying to debug. need to understand why this happened
       // Spacer()
    }
}

#Preview {
    AccountsScreen()
}

