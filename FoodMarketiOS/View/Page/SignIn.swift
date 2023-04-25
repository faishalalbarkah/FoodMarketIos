//
//  SignIn.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 28/03/23.
//

import SwiftUI

struct SignIn: View {
    @State var ShowHomeView = false
    @State var ShowSignUpView = false
    @State var Email: String = ""
    @State var Password: String = ""
    func ChangeView () {
        self.ShowSignUpView = true
    }
    func Login () {
        self.ShowHomeView = true
    }
    var body: some View {
        
        VStack(alignment:.leading,spacing:0.0){
            
            TopBar(Title: "Sign In", SubTitle: "Find your best ever meal", ImageProfile: false, ArrowBack: true)
            .padding(.top, 24.0)
            .padding(.bottom, 40.0)
        
            VStack{
                    InputCustome(title: "Email Address", value: $Email)
                    .padding(.bottom, 16.0)
                    InputCustome(title: "Password", value: $Password)
                
                ButtonCustome(title:"Sign In", type:true, Event: {self.Login()}, CustomeWidth: 312, CustomeHeight: 20)
                    .padding(.top, 30.0)
                    .padding(.bottom, 12.0)
                   

                ButtonCustome(title:"Create New Account", type:false, Event: {self.ChangeView()}, CustomeWidth: 0, CustomeHeight: 20)
            }
            
        }
        .padding(.horizontal, 20.0)
        .navigationBarHidden(true)
        
        Spacer()
        VStack{
            
        }
        NavigationLink(destination: TabFooter(), isActive: $ShowHomeView) { EmptyView() }
        NavigationLink(destination: SignUp(), isActive: $ShowSignUpView) { EmptyView() }
    }
        
}

//struct SignIn_Previews: PreviewProvider {
//    static var previews: some View {
//        SignIn()
//    }
//}
