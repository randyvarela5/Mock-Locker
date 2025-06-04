//
//  TimerControls.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/28/25.
//

import Foundation
import SwiftUI


//func startTimer(isPlaying: Bool,
//                currentIndex: Binding<Int>,
//                slidesCount: Int,
//                timer: inout Timer?) {
//    
//    guard isPlaying else {return}
//    timer = Timer.scheduledTimer(withTimeInterval: 4.0, repeats: true) { _ in
//        withAnimation(.easeInOut(duration: 0.6)) {
//            currentIndex.wrappedValue = (currentIndex.wrappedValue + 1) % slidesCount
//        }
//    }
//}
//
//func stopTimer(timer: inout Timer?) {
//    timer?.invalidate()
//    timer = nil
//}
//
//func resetTimer(isPlaying: Bool) {
//    stopTimer(timer: Timer)
//    if isPlaying {
//        startTimer()
//    }
//}
//
//func togglePlayPause(isPlaying: Bool) {
//    isPlaying.toggle()
//    if isPlaying {
//        startTimer()
//    } else {
//        stopTimer()
//    }
//}
//
//func nextSlide(currentIndex: Binding<Int>, slidesCount: Int) {
//    withAnimation(.easeInOut(duration: 0.5)) {
//        currentIndex.wrappedValue = (currentIndex.wrappedValue + 1) % slidesCount
//    }
//    resetTimer()
//}
//
//func previousSlide(currentIndex: Binding<Int>, slidesCount: Int) {
//    withAnimation(.easeInOut(duration: 0.5)) {
//        currentIndex.wrappedValue = currentIndex.wrappedValue == 0 ? slidesCount - 1 : currentIndex.wrappedValue - 1
//    }
//    resetTimer()
//}
