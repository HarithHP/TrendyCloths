//
//  HomeUIView.swift
//  TrendyCloths
//
//  Created by User on 2024-04-02.
//

import SwiftUI

struct HomeUIView: View {
    @State private var selectedIndex: Int = 1
      
      private let categories = ["All", "Newly", "Denim", "Shirts", "T-shirts", "others"]
    @StateObject var cartManager = CartManager()

    var body: some View
    {
        NavigationView{
            
            ZStack {
                VStack{
                    
                    Search().offset(y:-120)
                }
                
                VStack{
                    NavigationLink
                    {
                        
                        CartView().environmentObject(cartManager)
                    }
                label:
                    {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }.foregroundColor(.black).offset(x:170, y:-240)
                    
                    
                    Image(systemName:"contextualmenu.and.cursorarrow")    .resizable()
                        .foregroundColor(.black)             .scaledToFill()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width:25 ,height:25)
                        .offset(x:-160, y:-275)
                    
                    
                    Text("WELCOME TRENDY")
                        .font(.custom("AmericanTypewriter", size: 25))
                        .foregroundColor(Color(red: 187/255, green: 138/255, blue: 82/255)).bold()
                        .frame(width: 308, height: 115)
                        .offset(y: -350)

                    
                    Text("Categories")
                        .font(.custom("AmericanTypewriter", size: 24))
                        .foregroundColor(Color(red: 187/255, green: 138/255, blue: 82/255)).bold()
                        .frame(width: 308, height: 12).offset(x:-110,y:-75)
                    
                
                }
                
                VStack{
                    Image("ca356473-51b1-4c8a-b471-2ea108caf1df_1024")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150 ,height:180)
                        .offset(y:-110)
                    
                    
                    HStack{
                        Circle().fill(Color(red: 187/255, green: 138/255, blue: 82/255))
                            .frame(width: 15,height: 15)
                        
                        
                        Circle().fill(.black)
                            .frame(width: 15,height: 15)
                        
                        
                        Circle().fill(Color(red: 187/255, green: 138/255, blue: 82/255))
                            .frame(width: 15,height: 15)
                    }.padding(.horizontal,5).offset(y:-100)
                        
                }
                
                VStack{
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< categories.count) { i in
                                Button(action: {selectedIndex = i}) {
                                    CategoryView(isActive: selectedIndex == i, text: categories[i])
                                }
                            }
                        }
                        .padding()
                    }
                }.offset(y:80)

                
                VStack{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing:15) {
                            ForEach(productList, id: \.id) { product in
                                ItemCard(product: product)
                                    .environmentObject(cartManager)
                            }
                        }
                        
                    }
                }.offset(y:220).padding()
                
                VStack {
                                   Spacer()
                                   BottomNavBarView()
                               }
            }
        }.navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    HomeUIView()
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color.brown : Color.black.opacity(0.5))
            if (isActive) { Color("Primary")
                .frame(width: 15, height: 2)
                .clipShape(Capsule())
            }
        }
        .padding(.trailing)
    }
}

struct BottomNavBarView: View {
    var body: some View {
        HStack {
            BottomNavBarItem(systemName: "house.fill", action: {})
            BottomNavBarItem(systemName: "heart.fill", action: {})
            BottomNavBarItem(systemName: "cart.fill", action: {})
            BottomNavBarItem(systemName: "person.fill", action: {})
        }
        .padding()
        .background(Color.white)
        .clipShape(Capsule())
        .padding(.horizontal)
        .shadow(color: Color.brown.opacity(0.15), radius: 10, x: 2, y: 6)
    }
}

struct BottomNavBarItem: View {
    let systemName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .resizable()
                .foregroundColor(.brown)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .frame(width: 80, height: 25)
                
                
        }
    }
}
