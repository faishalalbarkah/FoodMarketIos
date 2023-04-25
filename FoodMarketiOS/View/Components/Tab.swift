//
//  Tab.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 01/04/23.
//

import SwiftUI

struct Tab: View {
    let title : String
    let Active : Bool
    var body: some View {
        VStack{
            Text(title)
                .font(.custom("Poppins-Medium", size:17))
                .foregroundColor(Active ? Color("Black") : Color("Gray"))
            if Active
            {
                Divider()
                 .frame(height: 2)
                 .padding(.horizontal, 30)
                 .background(Color("Black"))
            } else {
                Text("")
            }
           
        }
        .padding(.horizontal, 10.0)
        .padding(.bottom, 5.0)
    }
}

