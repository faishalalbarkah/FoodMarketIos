//
//  ProdukDetail.swift
//  FoodMarketiOS
//
//  Created by faisalalbarkah on 25/04/23.
//

import SwiftUI


//step 1 -- Create a shape view which can give shape
struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

//step 2 - embed shape in viewModifier to help use with ease
struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner

    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}
//step 3 - crate a polymorphic view with same name as swiftUI's cornerRadius
extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}


struct ProdukDetail: View {
    var body: some View {
        NavigationView{
            ZStack(alignment:.bottom){
                
                Image("ProductDetail")
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 0.0){
                    VStack(alignment: .leading, spacing: 0.0){
                        HStack(){
                            VStack(alignment: .leading, spacing: 0.0){
                                Text("Cherry Healthy")
                                    .font(.custom("Poppins-Regular", size: 20))
                                    .foregroundColor(Color("Black"))
                                    .padding(.bottom, 5.0)
                                HStack{
                                    Image("Star")
                                    Text("4.5")
                                        .font(.custom("Poppins-Regular", size: 12))
                                        .foregroundColor(Color("Gray"))
                                }
                            }
                            Spacer()
                            Image("Btn_Min")
                            Text("14")
                            Image("Btn_Add")
                        }
                        
                        Text("Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(Color("Gray"))
                            .padding(.vertical, 15.0)
                        
                        Text("Ingredients :")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(Color("Black"))
                        
                        Text("Seledri, telur, blueberry, madu.")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(Color("Gray"))
                            .padding(.vertical, 12.0)
                        
                        HStack{
                            VStack(alignment:.leading){
                                Text("Total Price:")
                                    .font(.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("Gray"))
                                    .padding(.bottom, 5.0)
                                Text("IDR 12.289.000")
                                    .font(.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("Black"))
                            }
                            Spacer()
                            VStack{
                                ButtonCustome(title:"Order Now", type:true, Event: {}, CustomeWidth: 0, CustomeHeight: 20);
                            }
                            .frame(maxWidth: 130.0)
                        }
                        .padding(.top, 40.0)
                    }
                    .padding(.all, 30.0)
                }
                .frame(maxWidth: .infinity)
                .background(Color("White"))
                .padding(.bottom, 0.0)
                .cornerRadius(radius: 20.0, corners: [.topRight, .topLeft])            }
            .navigationBarHidden(true)
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct ProdukDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProdukDetail()
    }
}
