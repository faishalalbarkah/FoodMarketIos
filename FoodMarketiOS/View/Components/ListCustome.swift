//
//  ListCustome.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 21/04/23.
//

import SwiftUI

struct ListCustome: View {
    let title : String;
    var body: some View {
        HStack{
            Text(title)
            Spacer()
            Image("ArrowNext")
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 5.0)
        Divider()
    }
}
