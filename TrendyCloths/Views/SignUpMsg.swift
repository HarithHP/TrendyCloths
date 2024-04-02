//
//  SignUpMsg.swift
//  TrendyCloths
//
//  Created by User on 2024-04-03.
//

import SwiftUI

struct SignUpMsg: View {
    var body: some View {
        NavigationView{
            ZStack {
                Image("008c3c4ede768d8d49cfa4b8814dd1b5")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width:150 ,height:852)
                
                RoundedRectangle(cornerRadius: 100)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(1), Color.white.opacity(0.71)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 400, height: 390)
                    .shadow(radius: 20)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 100, style: .continuous)
                    ).offset(y:267)
                
                VStack
                {
                    Image(systemName: "nosign.app.fill")
                        .resizable()
                        .frame(width: 30, height: 25)
                        .cornerRadius(12)
                        .offset(y:205)
                        .foregroundColor(.red)
                    
                    Text("You need to sign in before start the shopping")
                        .font(Font.custom("Skranji", size: 17))
                        .foregroundColor(Color(red: 136/255, green: 136/255, blue: 136/255))
                        .frame(width: 288)
                        .offset(y: 225)
                    
                    
                    NavigationLink(destination: SignUpView())
                    {
                        Text("Sign In")
    
                    }.font(.custom("Mongolian Baiti", size: 27))
                        .foregroundColor(.white)
                        .frame(width: 288, height: 60)
                        .background(Color.brown)
                        .padding(15)
                        .offset(y: 250)
                }
                
            }.padding(.horizontal, 15)
            
        }
    }
}

#Preview {
    SignUpMsg()
}
