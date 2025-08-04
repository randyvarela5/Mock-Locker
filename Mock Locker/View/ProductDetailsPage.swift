//
//  ProductDetailsPage.swift
//  Mock Locker
//
//  Created by Randy Varela on 6/19/25.
//

import SwiftUI

struct ProductDetailsPage: View {
    
    
    
    @StateObject var viewModel : ProductDetailsPageViewModel
    @EnvironmentObject var shoppingCartManager : ShoppingCartManager
    @State private var selectedSize: String? = nil
    
    init(merchandise : Merchandise) {
        self._viewModel = StateObject(wrappedValue: ProductDetailsPageViewModel(merchandise: merchandise))
    }
    
    var body: some View {
        ScrollView {
            VStack{
                HStack {
                    Text(viewModel.merchandise.name)
                        .font(.title)
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .font(.title2)
                }
                //This double padding works, but there has to be a cleaner way to do this
                .padding(.horizontal)
                .padding(.top)
                HStack {
                    Text("\(viewModel.merchandise.brand) | \(viewModel.merchandise.category)")
                        .font(.subheadline)
                    Spacer()
                }
                .padding(.horizontal)
                HStack {
                    Text(viewModel.itemNumber)
                        .font(.caption2)
                    Text(viewModel.modelNumber)
                        .font(.caption2)
                    Spacer()
                }
                .padding(.horizontal)
                
                //TODO: placeholder image takes too long to be replaced when loading PDP.
                AsyncImage(url: viewModel.imageURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    Image(viewModel.merchandise.thumbnail)
                        .resizable()
                        .frame(width: 300, height: 300)
                }
                Text(viewModel.shoeDescription)
                    .padding()
                    .font(.title3)
                
                Text("Select your size:")
                    .font(.callout)
                    .padding(.top)
                
                // Place picker here:
                ShoeSizePicker(viewModel: viewModel, selectedSize: $selectedSize)
                
                Text(viewModel.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                
                Button {
                    guard let selectedSize = selectedSize else {
                        print("No size selected, cannot add to cart")
                        return
                    }
                    shoppingCartManager.addShoeToCart(merchandiseID: viewModel.merchandise.id, shoeSize: selectedSize)
                    print("Item added to cart!")

                } label: {
                    HStack {
                        Text("Add To Cart")
                        Image(systemName: "cart")
                    }
                    .frame(width: 350, height: 50)
                    .background(selectedSize == nil ? .gray : .black)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .cornerRadius(25)
                }
                // If no size is selected, disable the add to cart button
                .disabled(selectedSize == nil)
            }
        }
        // Navigation Bar
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Item Details")
        .toolbarBackground(Color.black, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Button(action: {
                        print("Search button pressed")
                    }) {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                    
                    Button(action: {
                        print("Shopping cart pressed")
                    }) {
                        Image(systemName: "cart")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                }
            }
        }
        Spacer()
    }
}

//#Preview {
//    ProductDetailsPage(merchandise: MerchandiseData.merchandise[0])
//}
