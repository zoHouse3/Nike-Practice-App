//
//  ItemCatalogView.swift
//  ItemGridRemake
//
//  Created by Eric Barnes - iOS on 11/27/23.
//

import SwiftUI
// TODO: Deselect all other buttons when one is tapped
/*
    - Loop through all buttons and deselect non selected
 */
struct ShopCatalogView: View {
    @Environment(\.dismiss) private var dismiss
    
    var navTitle: String = "Use Code: CYBER"
    var columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            Color.white
            
            VStack {
                
                // Top category scroller
                CategorySliderBar()
                    .padding()
                
                // Grid
                ScrollView {
                    LazyVGrid(columns: columns, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 25, pinnedViews: [], content: {
                        ForEach(0..<20) { _ in
                            ShoppingItem()
                                .frame(height: 300)
                        }
                    })
                }
                
                Spacer()
                
                
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(navTitle)
        .navigationBarBackButtonHidden()
        .toolbar(content: {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.subheadline)
                })
                .tint(.black)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Button(action: {print("")}) {
                        Image(systemName: "slider.horizontal.3")
                            .font(.subheadline)
                            // .padding(10)
                    }
                    .tint(.black)
                    
                    Button(action: {print("")}, label: {
                        Image(systemName: "magnifyingglass")
                            .font(.headline)
                    })
                    .tint(.black)
                }
            }
        })
    }
}

#Preview {
    ShopCatalogView()
}
