//
//  CartView.swift
//  TrendyCloths
//
//  Created by User on 2024-04-03.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager : CartManager

    var body: some View {
        NavigationView{
        ZStack
            {
                ScrollView{
                    
                    
                    if cartManager.products.count > 0 {
                        ForEach(cartManager.products , id: \.id){
                            product in
                            ItemRow(product:product)
                        }
                        VStack
                        {
                            HStack{
                                Text("Gross Total")
                                    .font(.custom("AmericanTypewriter", size: 20))
                                    .foregroundColor(Color.black).bold()
                                
                                Spacer()
                                
                                Text("Rs.\(cartManager.total).00")
                                    .bold()
                            }.padding(5)
                            
                            NavigationLink(destination: CheckoutView())
                            {
                                Text("Ready to Pay")
                                
                            } .font(.custom("Mongolian Baiti", size: 22))
                                .foregroundColor(Color.white)
                                .frame(width: 270
                                       , height:70
                                )
                                .background(Color(red: 187/255, green: 138/255, blue: 82/255))
                                .cornerRadius(15)
                                .padding(15)
                                .shadow(radius: 25)
                                .offset(y:30)
                            
                        }
                        
                    }
                    else {
                        
                        Text("Your cart is empty....")
                            .font(.custom("AmericanTypewriter", size: 20))
                            .foregroundColor(Color.black).bold()
                            .offset(y:300)
                    }
                    
                }
                .navigationTitle("")
                .padding(.top)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CartView().environmentObject(CartManager())
}
