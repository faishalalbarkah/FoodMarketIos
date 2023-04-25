//
//  DropdownCustome.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 30/03/23.
//

import SwiftUI

struct DropdownCustome: View {
    @State var value = ""
    var placeholder = "Select City"
    var dropDownList = ["Tangerang", "Jakarta", "Bekasi", "Bandung"]
    var body: some View {
        Menu {
            ForEach(dropDownList, id: \.self){ client in
                Button(client) {
                    self.value = client
                }
            }
        } label: {
            VStack(spacing: 5){
                HStack{
                    Text(value.isEmpty ? placeholder : value)
                        .foregroundColor(value.isEmpty ? .gray : .black)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color("Black"))
                        .font(Font.system(size: 20, weight: .bold))
                }
                .padding(.all, 15.0)
                .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color("Black"), lineWidth: 1)
                    )
            }
        }
    }
}

