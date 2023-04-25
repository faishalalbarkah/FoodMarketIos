//
//  TabItem.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 01/04/23.
//

import SwiftUI

struct TabItem: View {
    let title: String
    let price: String
    let rating: String
    let image: String
    var body: some View {
        HStack{
            Image(image)
            
            VStack(alignment: .leading, spacing: 0.0){
                Text(title)
                    .font(.custom("Poppins-Regular", size:16))
                    .foregroundColor(Color("Black"))
                    .padding(.bottom, 5.0)
                Text(price)
                    .font(.custom("Poppins-Regular", size:13))
                    .foregroundColor(Color("Gray"))
            }
            
            Spacer()
            
            Image("Star")
            Text(rating)
                .font(.custom("Poppins-Regular", size:12))
                .foregroundColor(Color("Gray"))
                .padding(.trailing, 20.0)
        }
        .padding(.vertical, 5.0)
        .padding(.horizontal, 20.0)
    }
}
