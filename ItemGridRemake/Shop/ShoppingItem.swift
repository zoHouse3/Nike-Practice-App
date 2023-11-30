//
//  ShoppingItem.swift
//  ItemGridRemake
//
//  Created by Eric Barnes - iOS on 11/27/23.
//

import SwiftUI

// NOTE: UI shown in preview is not sized to fit actual UI shown in app
struct ShoppingItem: View {
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .leading) {
                
                ItemImage() 
                    .frame(height: proxy.size.height * 0.6)
                
                DescriptionText
                    .padding(.leading)
            }
        }
    }
    
    var DescriptionText: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Best Seller")
                .font(.system(size: 13))
                .foregroundStyle(.red)
            
            Text("Nike Air Max 1")
                .font(.system(size: 13))
                .fontWeight(.semibold)
            
            Text("Big Kids' Shoes")
                .font(.system(size: 13))
                .foregroundStyle(.gray)
            
            Text("$100")
                .font(.system(size: 13))
                .fontWeight(.semibold)
            
            Text("Extra 25% Off w/ Code")
                .font(.system(size: 12))
                .foregroundStyle(MyHelper.appGreen)
            
            ColorOptions()
        }
    }
}

#Preview {
    ShoppingItem()
    // ColorOptions()
}

struct ColorOptions: View {
    var body: some View {
        HStack {
            ForEach(MyHelper.colorOptions, id: \.self) { color in
                Circle()
                    .foregroundStyle(color)
            }
            Text("+3")
                .font(.system(size: 11))
        }
    }
}

struct ItemImage: View {
    var body: some View {
        ZStack() {
            Color.white.ignoresSafeArea()
            
            Image("jordan1")
                .resizable()
                .scaledToFit()
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "heart")
                            .foregroundStyle(.black)
                            .font(.system(size: 17))
                            .padding(6)
                            .background(MyHelper.appGray1)
                            .clipShape(Circle())
                            .padding()
                    })
                }
                
                Spacer()
            }
        }
    }
}
