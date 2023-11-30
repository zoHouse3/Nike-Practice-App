//
//  ShopTab.swift
//  ItemGridRemake
//
//  Created by Eric Barnes - iOS on 11/27/23.
//

import SwiftUI

struct ShopTab_Main: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: ShopCatalogView()) {
                Text("Go to Shop Catalog")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(.brown)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            .navigationTitle("Shop")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "magnifyingglass")
                        .font(.headline)
                }
            })
        }
    }
}

#Preview {
    ShopTab_Main()
}
