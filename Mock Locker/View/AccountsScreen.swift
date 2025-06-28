//
//  AccountsScreen.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/10/25.
//

import SwiftUI

struct AccountsScreen: View {
    
    @StateObject private var viewModel = AccountsScreenViewModel()
    
    var body: some View {
        VStack {
            Image("mockLockerLogo2")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            HStack {
                Text(viewModel.emailLabel)
                    .font(.headline)
                Spacer()
            }
            .padding(.horizontal)
            customTextField(placerHolderText: viewModel.emailPlaceHolder, inputText: $viewModel.email)
                .padding(.top, -20)
            
            HStack {
                Text(viewModel.passwordLabel)
                    .font(.headline)
                Spacer()
            }
            .padding(.horizontal)
            customTextField(placerHolderText: viewModel.passwordPlaceHolder, inputText: $viewModel.password)
                .padding(.top, -20)
            
            HStack{
                Text(viewModel.forgotEmailText)
                Spacer()
                Text(viewModel.forgotPasswordText)
            }
            .padding()
            
            Button{
                print("Sign In button pressed")
            } label: {
                Text(viewModel.signInButtonText)
            }
            .frame(width: 350, height: 50)
            .background(.black)
            .foregroundColor(.white)
            .font(.title3)
            .fontWeight(.bold)
            .cornerRadius(25)
            
            Text(viewModel.signUpPromptText)
                .padding(.top)
            
            Button {
                print("Register your account pressed")
            } label: {
                Text(viewModel.registerButtonText)
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

