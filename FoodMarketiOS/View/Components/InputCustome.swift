//
//  InputCustome.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 29/03/23.
//

import SwiftUI

struct InputCustome: View {
    let title : String
    @Binding var value : String

    var body: some View {
        VStack(alignment:.leading, spacing: 0.0){
            Text(title)
                .font(.custom("Poppins-Medium", size: 16))
                .foregroundColor(Color("Black"))
                .padding(.bottom, 12.0)
            
            VStack(alignment:.leading, spacing: 0.0){
                if title == "Password"
                {
                    SecureField(title, text: $value)
                        .disableAutocorrection(true)
                        .padding()
                        .foregroundColor(Color("Gray"))
                }
                else if title == "Phone Number" || title == "House No"
                {
                    TextField(title, text: $value)
                        .disableAutocorrection(true)
                        .padding()
                        .foregroundColor(Color("Gray"))
                        .keyboardType(.numberPad)
                }
                else
                {
                    TextField(title, text: $value)
                        .disableAutocorrection(true)
                        .padding()
                        .foregroundColor(Color("Gray"))
                }
            }
            .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color("Black"), lineWidth: 1)
                )
        }
    }
}

