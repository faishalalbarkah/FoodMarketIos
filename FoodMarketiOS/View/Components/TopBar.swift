//
//  TopBar.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 30/03/23.
//

import SwiftUI

struct TopBar: View {
    let Title : String?
    let SubTitle: String?
    let ImageProfile: Bool
    let ArrowBack : Bool
    @State var ShowBackArrow = false
    var body: some View {
        if ArrowBack
        {
            VStack(alignment: .leading, spacing: 0.0)
            {
                HStack{
                    if ArrowBack
                    {
                        Image("ArrowBack")
                            .padding(.trailing, 26.0)
                            .padding(.bottom, 10.0)
                            .onTapGesture {
                                self.ShowBackArrow = true
                            }
                    }
                    
                   
                    VStack(alignment: .leading, spacing: 0.0){
                            Text(Title ?? "")
                                .multilineTextAlignment(.leading)
                                .font(.custom("Poppins-Medium", size: 22))
                                .foregroundColor(Color("Black"))
                                .padding(.bottom, 3.0)
                        
                            Text(SubTitle ?? "")
                                .multilineTextAlignment(.trailing)
                                .font(.custom("Poppins-Light", size: 14))
                                .foregroundColor(Color("Gray"))
                    }
                    NavigationLink(destination: MakeOrder(), isActive: $ShowBackArrow) { EmptyView() }
                }
            }
        
        }
        else
        {
            HStack(spacing:0.0){
                VStack(alignment: .leading, spacing: 0.0){
                    Text(Title ?? "")
                        .font(.custom("Poppins-Medium", size: 22))
                        .foregroundColor(Color("Black"))
                        .padding(.bottom, 3.0)
                    Text(SubTitle ?? "")
                        .multilineTextAlignment(.trailing)
                        .font(.custom("Poppins-Light", size: 14))
                        .foregroundColor(Color("Gray"))
                }
                Spacer()
                if ImageProfile
                {
                    Image("Image_Profile")
                }
            }
        }
    }
}
