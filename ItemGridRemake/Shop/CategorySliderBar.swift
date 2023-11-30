//
//  CategorySlider.swift
//  ItemGridRemake
//
//  Created by Eric Barnes - iOS on 11/27/23.
//

import SwiftUI

struct CategorySliderBar: View {
    @State var currentlySelectedID: Int = 0 // keep track of selected category
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 35) {
                ForEach(0..<MyHelper.categories.count) { index in
                    CategorySliderButton(id: index, title: MyHelper.categories[index], currentlySelectedID: $currentlySelectedID)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    CategorySliderBar()
}

struct CategorySliderButton: View {
    let id: Int
    let title: String
    @Binding var currentlySelectedID: Int // when value changes slider will be notified and notify all other buttons with currentlySelected
    
    var body: some View {
        Button {
            withAnimation(.spring) {
                self.currentlySelectedID = id
            }
        } label: {
            VStack(spacing: 20) {
                Text(title)
                    .foregroundStyle(.black)
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 1.5)
            }
        }
        .tint(currentlySelectedID == id ? .black : .clear)

    }
}


