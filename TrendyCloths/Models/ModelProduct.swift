//
//  ModelProduct.swift
//  TrendyCloths
//
//  Created by User on 2024-04-02.
//

import Foundation

struct Product : Identifiable, Decodable {
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
    Product(  name: "Embroidery TShirt",
              category: "TShirt",
              link1: "TM10256-Mens-Jean-Thilakawardhana-Sri-Lanka",
              link2: "Link1",
              link3: "Link1",
              description: "Men Embroidery Brand High Quality Knitted Ice Cool Polo Shirt Summer Casual Polo Collar Rib Breathable Top Short Sleeve T-shirt.",
              color: "All",
              itemSize: "All",
              price: 4500 ),
    
    Product(
            name: "Trendy TShirt",
            category: "TShirt",
            link1: "008c3c4ede768d8d49cfa4b8814dd1b5",
            link2: "Link1",
            link3: "Link1",
            description: "2024 Mens Cotton Linen Pants Male Autumn New Breathable Solid Color Linen Trousers Fitness Streetwear S-3XL",
            color: "All",
            itemSize: "All",
            price: 5500),
    
    Product(
            name: "Trendy TShirt",
            category: "stylish-man",
            link1: "008c3c4ede768d8d49cfa4b8814dd1b5",
            link2: "Link1",
            link3: "Link1",
            description: "2024 Mens Cotton Linen Pants Male Autumn New Breathable Solid Color Linen Trousers Fitness Streetwear S-3XL",
            color: "All",
            itemSize: "All",
            price: 5500),
    
    Product(
            name: "Trendy TShirt",
            category: "TShirt",
            link1: "Link1",
            link2: "Link1",
            link3: "Link1",
            description: "2024 Mens Cotton Linen Pants Male Autumn New Breathable Solid Color Linen Trousers Fitness Streetwear S-3XL",
            color: "All",
            itemSize: "All",
            price: 5500),
    
    Product(
            name: "Trendy TShirt",
            category: "TShirt",
            link1: "stylish-man",
            link2: "Link1",
            link3: "Link1",
            description: "2024 Mens Cotton Linen Pants Male Autumn New Breathable Solid Color Linen Trousers Fitness Streetwear S-3XL",
            color: "All",
            itemSize: "All",
            price: 5500),
    
    Product(
            name: "Vintage Shirt",
            category: "under-armour-0918-7137912-1",
            link1: "Link1",
            link2: "Link1",
            link3: "Link1",
            description: "2024 Mens Cotton Linen Pants Male Autumn New Breathable Solid Color Linen Trousers Fitness Streetwear S-3XL",
            color: "All",
            itemSize: "All",
            price: 5500),
    
    Product(
            name: "Trendy Pants",
            category: "Pants",
            link1: "TM10256-Mens-Jean-Thilakawardhana-Sri-Lanka",
            link2: "Link1",
            link3: "Link1",
            description: "2024 Mens Cotton Linen Pants Male Autumn New Breathable Solid Color Linen Trousers Fitness Streetwear S-3XL",
            color: "All",
            itemSize: "All",
            price: 5500),
    
    Product(
            name: "Trendy TShirt",
            category: "Denim",
            link1: "390088032--1--1588243090 1",
            link2: "Link1",
            link3: "Link1",
            description: "2024 Mens Cotton Linen Pants Male Autumn New Breathable Solid Color Linen Trousers Fitness Streetwear S-3XL",
            color: "All",
            itemSize: "All",
            price: 5500),
    
    Product(
            name: "Polo TShirt",
            category: "TM10256-Mens-Jean-Thilakawardhana-Sri-Lanka",
            link1: "Link1",
            link2: "Link1",
            link3: "Link1",
            description: "2024 Mens Cotton Linen Pants Male Autumn New Breathable Solid Color Linen Trousers Fitness Streetwear S-3XL",
            color: "All",
            itemSize: "All",
            price: 5500),
    
    Product(
            name: "Polo TShirt",
            category: "TShirt",
            link1: "images (2)",
            link2: "Link1",
            link3: "Link1",
            description: "2024 Mens Cotton Linen Pants Male Autumn New Breathable Solid Color Linen Trousers Fitness Streetwear S-3XL",
            color: "All",
            itemSize: "All",
            price: 5500),
    
  
         
]

