//
//  CustomTextField.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/11/25.
//

import SwiftUI

struct customTextField: View {
    
    var placerHolderText : String
    @Binding var inputText : String
    
    var body: some View {
        TextField(placerHolderText, text: $inputText)
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
            .padding()
            .background(Color.white)
            .autocorrectionDisabled(true)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.primary, lineWidth: 2)
            )
            .padding()
    }
}


#Preview {
    customTextField(placerHolderText: "placeholder", inputText: .constant("placeholder"))
}
