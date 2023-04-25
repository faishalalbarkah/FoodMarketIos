//
//  SignUp.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 29/03/23.
//

import SwiftUI

struct SignUp: View {
    @State var ShowSignInView = false
    @State var Email: String = ""
    @State var FullName: String = ""
    @State var Password: String = ""
    @State var Phone: String = ""
    @State var Address: String = ""
    @State var HouseNo: String = ""
    func ChangeView () {
        self.ShowSignInView = true
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0){
            TopBar(Title: "Sign Up", SubTitle: "Find your best ever meal", ImageProfile: false, ArrowBack: true)
            
            .padding(.top, 24.0)
            .padding(.bottom, 40.0)
            
            
            HStack{
                Spacer()
                Image("No_Profile")
                Spacer()
            }
            .padding(.vertical, 20.0)
        
            ScrollView(.vertical, showsIndicators: false){
                    InputCustome(title: "Full Name", value: $FullName)
                    InputCustome(title: "Email Address", value: $Email)
                    InputCustome(title: "Password", value: $Password)
                    InputCustome(title: "Phone Number", value: $Phone)
                    InputCustome(title: "Address", value: $Address)
                    InputCustome(title: "House No", value: $HouseNo)
                    DropdownCustome()
                    .padding(.top, 10.0)
                
                ButtonCustome(title:"Countinue", type:true, Event: {self.ChangeView()}, CustomeWidth: 312, CustomeHeight: 20)
                    .padding(.top, 30.0)
                    .padding(.bottom, 12.0)
            }
        }
        .navigationBarHidden(true)
        .padding(.horizontal, 20.0)
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
