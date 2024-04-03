//
//  ModelProduct.swift
//  TrendyCloths
//
//  Created by User on 2024-04-02.
//

import Foundation

struct Product : Identifiable {
    var id = UUID()
      var name: String
     var category: String
     var link1: String?
     var link2: String?
     var link3: String?
    var description: String?
     var color: String
    var itemSize: String
    var price: Int
}

let productList = [
    Product(name: "Mock Item 2", category: "Pants", link1: "008c3c4ede768d8d49cfa4b8814dd1b5", link2: "", link3: "", description: "One of the primary functions of clothing is to protect the body from environmental elements such as weather, temperature extremes, and physical harm. Clothing acts as a barrier between the body and potentially harmful agents.", color: "Mock Color 2", itemSize: "Mock Size 2", price: 2800),
    
    Product(name: "Mock Item 2", category: "Dress", link1: "008c3c4ede768d8d49cfa4b8814dd1b5", link2: "", link3: "", description: "Mock Description 2", color: "Mock Color 2", itemSize: "Mock Size 2", price: 200),
    
    Product(name: "Mock Item 2", category: "Tops", link1: "008c3c4ede768d8d49cfa4b8814dd1b5", link2: "", link3: "", description: "Mock Description 2", color: "Mock Color 2", itemSize: "Mock Size 2", price: 200),
    
    Product(name: "Mock Item 2", category: "Tops", link1: "008c3c4ede768d8d49cfa4b8814dd1b5", link2: "", link3: "", description: "Mock Description 2", color: "Mock Color 2", itemSize: "Mock Size 2", price: 200),
    
    Product(name: "Mock Item 2", category: "Tops", link1: "008c3c4ede768d8d49cfa4b8814dd1b5", link2: "", link3: "", description: "Mock Description 2", color: "Mock Color 2", itemSize: "Mock Size 2", price: 200),
    
    Product(name: "Mock Item 2", category: "Tops", link1: "008c3c4ede768d8d49cfa4b8814dd1b5", link2: "", link3: "", description: "Mock Description 2", color: "Mock Color 2", itemSize: "Mock Size 2", price: 200),
    
    Product(name: "Mock Item 2", category: "Tops", link1: "008c3c4ede768d8d49cfa4b8814dd1b5", link2: "", link3: "", description: "Mock Description 2", color: "Mock Color 2", itemSize: "Mock Size 2", price: 200)
    
]

