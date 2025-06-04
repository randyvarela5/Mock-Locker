//
//  HeroSlideshow.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/28/25.
//

import SwiftUI

struct HeroSlideshow: View {
    
    @State var currentIndex = 0
    @State var isPlaying = true
    @State var timer : Timer?
    
    
    let slides = [
        HeroSlide(
            id: 1,
            title: "The Fathers day shop",
            subtitle: "Get inspired with these top deals for dad",
            backgroundImage: "FathersDayHero"
        ),
        
        HeroSlide(
            id: 2,
            title: "Stanley Quenchers",
            subtitle: "So that people will like you",
            backgroundImage: "StanleyMAP"
        )
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                ZStack{
                    TabView(selection: $currentIndex) {
                        ForEach(0..<slides.count, id: \.self) { index in
                            HeroSlideView(slide: slides[index])
                                .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .animation(.easeInOut(duration: 0.6), value: currentIndex)
                    
                    // Overlay controls: These work, but I dont think I need them yet.
                    //                VStack {
                    //                    Spacer()
                    //                    HStack {
                    //                        Button(action: togglePlayPause) {
                    //                            Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                    //                                .font(.title2)
                    //                                .foregroundColor(.white)
                    //                                .background(
                    //                                    Circle()
                    //                                        .fill(Color.black.opacity(0.3))
                    //                                        .frame(width: 44, height: 44)
                    //                                )
                    //                        }
                    //                        Spacer()
                    //                        PaginationDots(totalPages: slides.count,
                    //                                       currentIndex: currentIndex,
                    //                                       onPageTap: { index in
                    //                                           withAnimation(.easeInOut(duration: 0.5)) {
                    //                                               currentIndex = index
                    //                                           }
                    //                                           resetTimer()
                    //                                       })
                    //                    }
                    //                }
                }
                .frame(height: 250)
                .padding()
            }
            
        }
    }
    
    func startTimer() {
        guard isPlaying else {return}
        timer = Timer.scheduledTimer(withTimeInterval: 4.0, repeats: true) { _ in
            withAnimation(.easeInOut(duration: 0.6)) {
                currentIndex = (currentIndex + 1) % slides.count
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func resetTimer() {
        stopTimer()
        if isPlaying {
            startTimer()
        }
    }
    
    func togglePlayPause() {
        isPlaying.toggle()
        if isPlaying {
            startTimer()
        } else {
            stopTimer()
        }
    }
    
    func nextSlide() {
        withAnimation(.easeInOut(duration: 0.5)) {
            currentIndex = (currentIndex + 1) % slides.count
        }
        resetTimer()
    }
    
    func previousSlide() {
        withAnimation(.easeInOut(duration: 0.5)) {
            currentIndex = currentIndex == 0 ? slides.count - 1 : currentIndex - 1
        }
        resetTimer()
    }
    
    
}

#Preview {
    HeroSlideshow()
}


