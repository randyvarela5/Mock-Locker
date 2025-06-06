//
//  HeroSlideView.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/28/25.
//

import SwiftUI

struct HeroSlideView: View {
    
    let slide : HeroSlide
    var body: some View {
        ZStack {
            Image(slide.backgroundImage)

            
            VStack {
                Spacer()
                // Title
                Text(slide.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                
                // Subtitle
                Text(slide.subtitle)
                    .font(.headline)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    .shadow(color: .black.opacity(0.3), radius: 1, x: 0, y: 1)
                
                // why 2 spacers?
                Spacer()
                Spacer()
            }
            .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

//#Preview {
//    HeroSlideView(slide: HeroSlide(id: 1, title: "title test", subtitle: "subtitle text", backgroundImage: "FathersDayHero"))
//}
