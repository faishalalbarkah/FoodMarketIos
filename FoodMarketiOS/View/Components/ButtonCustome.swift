//
//  Button.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 27/03/23.
//

import SwiftUI

struct ButtonCustome: View {
    
    let title : String
    let type : Bool
    let Event:  () -> Void
    let CustomeWidth : Int
    let CustomeHeight : Int
    
    var ColorTextPrimary = Color("Black")
    var ColorTextSecondary = Color("White")
    
    var ColorButtonPrimary = Color("Primary")
    var ColorButtonSecondary = Color("Gray")
    
    var body: some View {
        Button(action: {
            self.Event()
        },  label: {
            ZStack{
                Text(self.title)
                    .foregroundColor(self.type ? self.ColorTextPrimary : self.ColorTextSecondary)
                    .font(.custom("Poppins-Medium", size: 13))
            }
            .frame(minWidth: 0, maxWidth: .infinity)
//            .frame(width: CGFloat(CustomeWidth), height: CGFloat(CustomeHeight))
            
            
        })
        .padding(.vertical,12.0)
//        .padding(.horizontal, 35.0)
        .background(self.type ? self.ColorButtonPrimary : self.ColorButtonSecondary)
        .cornerRadius(8)
    }
}
