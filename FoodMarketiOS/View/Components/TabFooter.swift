//
//  TabFooter.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 01/04/23.
//

import SwiftUI

struct TabFooter: View {
    @State private var selection: Int = 1
    var body: some View {
        TabView(selection: $selection) {
            Home()
            .tabItem {
               
                if selection == 1 {
                    Image("Home_Active")
                }
                else {
                    Image("Home")
                }
            }
            .tag(1)
            Order()
            .tabItem {
                if selection == 2 {
                    Image("Order_Active")
                }
                else {
                    Image("Order")
                }
            }
            .tag(2)
            Profile()
            .tabItem {
                if selection == 3 {
                    Image("Profile_Active")
                }
                else {
                    Image("Profile_TabView")
                }
            }
            .tag(3)
          
            }
        .onAppear
        {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color("White"))
            
            // Use this appearance when scrolling behind the TabView:
            UITabBar.appearance().standardAppearance = appearance
            // Use this appearance when scrolled all the way up:
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}
