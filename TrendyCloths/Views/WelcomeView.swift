//
//  WelcomeView.swift
//  TrendyCloths
//
//  Created by User on 2024-04-02.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Image("008c3c4ede768d8d49cfa4b8814dd1b5")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width:150 ,height:852).offset(x:-90,y:40)
                
                RoundedRectangle(cornerRadius: 30)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.black.opacity(1), Color.black.opacity(0.71)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 400, height: 200)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                    ).offset(y:380)
                
                VStack
                {
                    Text("Trendy")
                        .font(.custom("AmericanTypewriter", size: 68))
                        .foregroundColor(Color.white)
                        .frame(width: 308, height: 132)
                        .offset(x:-50,y: 100)
                    
                    Text("There are many clothes with designs that are suitable for you today ")
                        .font(Font.custom("Skranji", size: 17))
                        .foregroundColor(Color.gray)
                        .frame(width: 288)
                        .offset(x:-25,y: 80)
                    
                    
                    NavigationLink(destination: CheckoutView())
                    {
                        Text("Continue")
                        
                    }.font(.custom("Mongolian Baiti", size: 27))
                        .foregroundColor(.white)
                        .frame(width: 258, height: 60)
                        .background(Color(red: 187/255, green: 138/255, blue: 82/255))
                        .cornerRadius(30)
                        .padding(15)
                        .offset(x:50,y: 240)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
            }.padding(.horizontal, 15)
        }
    }
}

#Preview {
    WelcomeView()
}
