//
//  ShoeSizePicker.swift
//  Mock Locker
//
//  Created by Randy Varela on 7/14/25.
//

import SwiftUI

struct ShoeSizePicker: View {
    
    @StateObject var viewModel : ProductDetailsPageViewModel
    @Binding var selectedSize: String?
    
    let shoeSizeColumns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: shoeSizeColumns, spacing: 8) {
            ForEach(viewModel.availableSizes, id: \.self) { size in
                Button(action: {
                    //This is wrong
                    selectedSize = size
                }) {
                    Text(size)
                        .frame(width: 60, height: 40)
                        .background(selectedSize ==  size ? Color.blue : Color.gray.opacity(0.2))
                        .foregroundStyle(selectedSize == size ? Color.white : Color.black)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(selectedSize == size ? Color.blue : Color.gray, lineWidth: 2)
                        )
                }
                
            }
        }
    }
}

//#Preview {
//    ShoeSizePicker()
//}
