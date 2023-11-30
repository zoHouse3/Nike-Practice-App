//
//  ContentView.swift
//  ItemGridRemake
//
//  Created by Eric Barnes - iOS on 11/27/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Home View")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ShopTab_Main()
                .tabItem {
                    Image(systemName: "text.magnifyingglass")
                    Text("Shop")
                }
            
            Text("Favorites View")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            
            Text("Bag View")
                .tabItem {
                    Image(systemName: "bag")
                    Text("Bag")
                }
            
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    MainTabView()
}
