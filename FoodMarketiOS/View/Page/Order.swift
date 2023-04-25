//
//  Order.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 05/04/23.
//

import SwiftUI

struct Order: View {
    @State private var TabActiveProgress = true
    @State private var TabActiveOrder = false
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 0.0){
                TopBar(Title: "Your Orders", SubTitle: "Wait for the best meal", ImageProfile: false, ArrowBack: false)
                    .padding(.horizontal, 20.0)
                
                ZStack(alignment: .leading){
                   
                }
                .frame(
                    minWidth: 0,
                   maxWidth: .infinity,
                    minHeight: 40.0,
                   alignment: .topLeading
                )
                .background(Color("GrayBG"))
                .padding(.vertical, 20.0)
                
                ZStack(alignment:.leading){
                    VStack(alignment:.leading, spacing: 0.0){
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(alignment:.center){
                                Tab(title: "In Progress", Active: TabActiveProgress)
                                    .onTapGesture {
                                        self.TabActiveProgress = true
                                        self.TabActiveOrder = false
                                    }
                                    .padding(.horizontal, 10.0)
                                Tab(title: "Past Orders", Active: TabActiveOrder)
                                    .onTapGesture {
                                        self.TabActiveProgress = false
                                        self.TabActiveOrder = true
                                    }
                                    .padding(.horizontal, 10.0)
                            }
                        }
                        
                        ScrollView(.vertical, showsIndicators: false)
                        {
                            TabItem(title: "Soup Bumil", price: "IDR 289.000", rating: "4.7", image: "TabImage_1")
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
            .padding(.vertical, 20.0)
        }
    }
}

struct Order_Previews: PreviewProvider {
    static var previews: some View {
        Order()
    }
}
