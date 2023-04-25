//
//  Home.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 30/03/23.
//

import SwiftUI

struct Home: View {
    @State private var TabActiveTaste = true
    @State private var TabActivePopular = false
    @State private var TabActiveRecommended = false
    @State private var TabActivePrice = false
    
    @State private var ShowDetail = false

    var body: some View {
        NavigationView{
            VStack(spacing:0.0){
                    VStack(alignment: .leading, spacing: 0.0){
                        TopBar(Title: "Food Market", SubTitle: "Let's get some Foods", ImageProfile: true, ArrowBack: false)
                    }
                    .padding(.horizontal, 20.0)
                    .padding(.vertical, 20.0)
                
                    VStack(alignment: .leading){
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(alignment: .top, spacing: 0.0){
                                Card()
                                Card()
                                Card()
                                Card()
                            }
                            .padding(.all, 20.0)
                        }
                    }
                    .background(Color("GrayBG"))
                
                    VStack(alignment:.leading){
                        VStack(alignment:.leading, spacing: 0.0){
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(alignment:.center){
                                    Tab(title: "New Taste", Active: TabActiveTaste)
                                        .onTapGesture {
                                            self.TabActiveTaste = true
                                            self.TabActivePopular = false
                                            self.TabActiveRecommended = false
                                            self.TabActivePrice = false
                                        }
                                        .padding(.horizontal, 10.0)
                                    Tab(title: "Popular", Active: TabActivePopular)
                                        .onTapGesture {
                                            self.TabActiveTaste = false
                                            self.TabActivePopular = true
                                            self.TabActiveRecommended = false
                                            self.TabActivePrice = false
                                        }
                                        .padding(.horizontal, 10.0)
                                    Tab(title: "Recommended", Active: TabActiveRecommended)
                                        .onTapGesture {
                                            self.TabActiveTaste = false
                                            self.TabActivePopular = false
                                            self.TabActiveRecommended = true
                                            self.TabActivePrice = false
                                        }
                                        .padding(.horizontal, 10.0)
                                    Tab(title: "Best Price", Active: TabActivePrice)
                                        .onTapGesture {
                                            self.TabActiveTaste = false
                                            self.TabActivePopular = false
                                            self.TabActiveRecommended = false
                                            self.TabActivePrice = true
                                        }
                                        .padding(.horizontal, 10.0)
                                }
                            }
                          
                            ScrollView(.vertical, showsIndicators: false)
                            {
                                TabItem(title: "Soup Bumil", price: "IDR 289.000", rating: "4.7", image: "TabImage_1")
                                    .onTapGesture {
                                        self.ShowDetail = true
                                    }
                                TabItem(title: "Soup Pamil", price: "IDR 250.000", rating: "5.0", image: "TabImage_1")
                                TabItem(title: "Chiken", price: "IDR 4.250.000", rating: "4.6", image: "TabImage_2")
                                TabItem(title: "Chiken", price: "IDR 4.250.000", rating: "4.6", image: "TabImage_2")
                                TabItem(title: "Chiken", price: "IDR 4.250.000", rating: "4.6", image: "TabImage_2")
                                TabItem(title: "Chiken", price: "IDR 4.250.000", rating: "4.6", image: "TabImage_2")
                            }
                        }
                        .padding(.top, 10.0)
                    }
                }
            .padding(.top, -20.0)
            .navigationBarHidden(true)
            
            NavigationLink(destination: ProdukDetail(), isActive: $ShowDetail) { EmptyView() }
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
    }
}

//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home()
//    }
//}
