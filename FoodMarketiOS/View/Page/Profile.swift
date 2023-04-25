//
//  Profile.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 13/04/23.
//

import SwiftUI

struct Profile: View {
    @State private var TabActiveAccount = true
    @State private var TabActiveFoodMarket = false
    var body: some View {
        ZStack{
            VStack(alignment: .center, spacing: 0.0){
                Image("Profile")
                
                Text("Faishal")
                    .font(.custom("Poppins-Medium", size:18))
                    .foregroundColor(Color("Black"))
                    .padding(.top, 10.0)
                    .padding(.bottom, 3.0)
                
                 Text("Emailgmail.com")
                    .font(.custom("Poppins-Regular", size:14.0))
                     .foregroundColor(Color("Gray"))
                
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
                
                VStack(alignment:.leading, spacing: 0.0){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment:.center){
                            Tab(title: "Account", Active: TabActiveAccount)
                                .onTapGesture {
                                    self.TabActiveAccount = true
                                    self.TabActiveFoodMarket = false
                                }
                                .padding(.horizontal, 10.0)
                            Tab(title: "FoodMarket", Active: TabActiveFoodMarket)
                                .onTapGesture {
                                    self.TabActiveAccount = false
                                    self.TabActiveFoodMarket = true
                                }
                                .padding(.horizontal, 10.0)
                        }
                    }
                    
                    ScrollView(.vertical, showsIndicators: false)
                    {
                        ListCustome(title: "Edit Profile")
                        ListCustome(title: "Home Address")
                        ListCustome(title: "Security")
                        ListCustome(title: "Payments")
                    }
                }
                .padding(.top, 10.0)
            }
            .padding(.top, -20.0)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
