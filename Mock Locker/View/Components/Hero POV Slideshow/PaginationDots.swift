//
//  PaginationDots.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/4/25.
//

import SwiftUI

struct PaginationDots: View {
    
    let totalPages: Int
        let currentIndex: Int
        let onPageTap: (Int) -> Void
        
        var body: some View {
            HStack(spacing: 8) {
                ForEach(0..<totalPages, id: \.self) { index in
                    let isSelected = currentIndex == index
                    let dotSize: CGFloat = isSelected ? 10 : 8
                    let dotColor = isSelected ? Color.white : Color.white.opacity(0.8)
                    let dotScale: CGFloat = isSelected ? 1.0 : 0.8
                    
                    Circle()
                        .fill(dotColor)
                        .frame(width: dotSize, height: dotSize)
                        .scaleEffect(dotScale)
                        .animation(.easeInOut(duration: 0.3), value: currentIndex)
                        .onTapGesture {
                            onPageTap(index)
                        }
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(
                Capsule()
                    .fill(Color.black.opacity(0.3))
            )
        }}

//#Preview {
//    PaginationDots()
//}

//struct SlideshowPagination_Previews: PreviewProvider {
//    static var previews: some View {
//        VStack(spacing: 20) {
//            // Preview with different states
//            PaginationDots(
//                totalPages: 4,
//                currentIndex: .constant(0),
//                onPageTap: { index in print("Tapped page \(index)") }
//            )
//            
//            PaginationDots(
//                totalPages: 4,
//                currentIndex: .constant(2),
//                onPageTap: { index in print("Tapped page \(index)") }
//            )
//        }
//        .padding()
//        .background(Color.blue) // Dark background to see the white dots
//    }
//}
