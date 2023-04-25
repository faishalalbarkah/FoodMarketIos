//
//  MakeOrder.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 27/03/23.
//

import SwiftUI

struct MakeOrder: View {
    @State var ShowSignInView = false
    @State var ShowSignUpView = false
    
    func ChangeView () {
        self.ShowSignInView = true
    }
    
    func ChangeSignUpView () {
        self.ShowSignUpView = true
    }
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .center, spacing: 0.0){
                    NavigationLink(destination: SignIn(), isActive: $ShowSignInView) { EmptyView() }
                    NavigationLink(destination: SignUp(), isActive: $ShowSignUpView) { EmptyView() }
                    Spacer()
                    
                    Image("MakeOrder")
                    
                    
                    Text("You've Made Order")
                        .padding(.top, 30.0)
                        .font(.custom("Poppins-Regular", size: 20))
                        .foregroundColor(Color("Black"))
                    
                    Text("Just stay at home while we are \npreparing your best foods")
                        .padding(.top, 6.0)
                        .font(.custom("Poppins-Light", size: 14))
                        .foregroundColor(Color("Gray"))
                        .multilineTextAlignment(.center)
                    
                    ButtonCustome(title:"Sign In", type:true, Event: {self.ChangeView()}, CustomeWidth: 200, CustomeHeight: 20)
                        .padding(.top, 30.0)
                        .padding(.bottom, 12.0)
                       

                    ButtonCustome(title:"Sign Up", type:false, Event: {self.ChangeSignUpView()}, CustomeWidth: 200, CustomeHeight: 20)
                    
                }
                .padding(.horizontal, 40.0)
            })
        }.navigationBarHidden(true)
    }
}

struct MakeOrder_Previews: PreviewProvider {
    static var previews: some View {
        MakeOrder()
    }
}
