//
//  AboutMe.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/19/25.
//

import SwiftUI

struct AboutMe: View {
    var body: some View {
        VStack {
            HStack{
                Image("swiftninja")
                    .resizable()
                    //.aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 150)
                    .border(.blue)
                    .onTapGesture {
                        print("Make image full screen")
                        
                    }
                VStack {
                    Text("Randy Varela")
                        .font(.title)
                    Text("👨‍💻iOS Developer")
                        .font(.subheadline)
                }
            }
            Text("Hi, I wanted to build a large eCommerce app in SwiftUI not only for fun, but also to learn more about SwiftUI and its scalabity.")
            
            Button {
                print("button pressed")
            } label: {
                Text("View Portfolio")
                    .frame(width: 350, height: 50)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .background(.red)
                    .cornerRadius(25)
            }
        }
        Spacer()
    }
}

#Preview {
    AboutMe()
}
