
//
//  WalkingView.swift
//  Trendy
//
//  Created by User on 2024-03-27.
//

import SwiftUI

struct WalkingView: View {
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                Color(red: 187/255, green: 138/255, blue: 82/255)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Image("handsome-man-black-suit-with-white-shirt-posing-attractive-guy-with-fashion-hairstyle-confident-man-with-short-beard-adult-boy-with-brown-hair-full-portrait_2_1-removebg-preview")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .offset(x:25, y:150)
                
                
                RoundedRectangle(cornerRadius: 30)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.38), Color.black.opacity(0.71)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 400, height: 130)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                    ).offset(y:350)
                
                VStack
                {
                    
                    Text("Level Up your Life Style")
                        .font(Font.custom("Skranji", size: 40))
                        .foregroundColor(.white)
                        .frame(width: 378)
                        .offset(x:10,y: -230)
                        .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    
                    NavigationLink(destination: HomeUIView())
                    {
                        Text("SKIP")
                        
                    }
                    .font(.custom("Mongolian Baiti", size: 27))
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    
                    .cornerRadius(30)
                    .padding(15)
                    .shadow(radius: 8.9)
                    .offset(x:105, y: 290)
                }
                
            }
        }
    }
}

#Preview {
    WalkingView()
}
