//
//  Card.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 30/03/23.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack(alignment:.leading, spacing:0.0){
            Image("pic_1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:200.0, height: 140.0)
            
            ZStack(alignment: .leading){
                    Color("White")
                    .ignoresSafeArea(.all)
                    VStack(alignment:.leading, spacing: 0.0){
                            Text("Cherry Healthy")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("Black"))
                                .padding(.vertical, 10.0)
                        
                        HStack{
                            Image("Star")
                            Text("4.5")
                                .font(.custom("Poppins-Light", size: 12))
                                .foregroundColor(Color("Gray"))
                        }
                        .padding(.bottom, 10.0)
                    }
                    .padding(.leading, 10.0)
                }
                .frame(width:200.0, height: 70.0)
                .edgesIgnoringSafeArea(.all)
                .cornerRadius(12)
        }
        .padding(.horizontal, 10.0)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
