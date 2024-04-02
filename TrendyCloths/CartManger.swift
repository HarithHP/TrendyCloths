//
//  CartManger.swift
//  TrendyCloths
//
//  Created by User on 2024-04-02.
//

import Foundation

class CartManager : ObservableObject{
    @Published private (set) var products: [Product] = []
    
    @Published private (set) var total: Int = 0
    
    func addToCart(product:Product)
    {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product){
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
}
