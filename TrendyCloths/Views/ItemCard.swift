//
//  ItemCard.swift
//  TrendyCloths
//
//  Created by User on 2024-04-02.
//

import SwiftUI

struct ItemCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product :Product
    var body: some View {
        
        ZStack
        {
            Color.brown
            ZStack(alignment:.bottomLeading)
            
            {
                VStack(alignment: .leading){
                    Image(product.link1 ?? "")
                        .resizable()
                        .frame(width: 155, height: 130)
                        .cornerRadius(12)
                        .offset(y:5)
                    
                    Text(product.name ?? "")
                        .font(.headline)
                        .padding(.vertical, 1)
                        .offset(x:5)
                    
                    Text("Rs.\(product.price)")
                        .bold().offset(x:5,y:-5)
                }
                
                Button {
                    cartManager.addToCart(product: product)
                } label: {
                    Image (systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                }.foregroundColor(.white)
                    .offset(x:125, y:-20)
            }
        }.frame(width: 165 , height: 190)
            .cornerRadius(15)
    }
}

#Preview {
    ItemCard(product: productList[1]).environmentObject(CartManager())
}
