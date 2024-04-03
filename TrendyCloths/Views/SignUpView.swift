//
//  SignUpView.swift
//  TrendyCloths
//
//  Created by User on 2024-04-02.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        ZStack{
            
            Rectangle().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).foregroundColor(.brown)
                .frame(width: 393, height:300).offset(y:-230)
            
            
            VStack{
                
                Text("Get’s started with Treandy.")
                    .font(.custom("AmericanTypewriter", size: 24))
                    .foregroundColor(Color.white)
                                    .frame(width: 318, height: 132)
                                    .offset(x:-20,y:-255)
                
                Text("Already have an account? Log in")
                                .font(Font.custom("Skranji", size: 14))
                                .foregroundColor(Color.white)
                                .frame(width: 364.3)
                                .offset(x:-70,y: -290)
                 Text("Register")
                    .font(Font.custom("AmericanTypewriter", size: 32))
                    .foregroundColor(Color.white).bold()
                    .offset(x:-105,y:-245)

            }
            
            VStack{
                
                VStack{
                    
                    Text("Your Name")
                        .font(Font.custom("Skranji", size: 14)).offset(x:-130,y:-10)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 340, height: 55)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    
                }.offset(y:355)
                
                HStack{
                    
                    Image(systemName: "mail")
                        .resizable()
                        .frame(width: 20, height: 18)
                        .foregroundColor(Color.gray)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Email")
                        .font(.custom("Inter", size: 18))
                        .foregroundColor(Color.gray).offset(x:20)
                    
                    
                }.offset(x:-110,y:310)
                
                Spacer()
                
                VStack{
                    
                    Text("Email Address")
                        .font(Font.custom("Skranji", size: 14)).offset(x:-120,y:-10)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 340, height: 55)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }.offset(y:-10)
                
                HStack{
                    
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 20, height: 18)
                        .foregroundColor(Color.gray)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Password")
                        .font(.custom("Inter", size: 18))
                        .foregroundColor(Color.gray).offset(x:20)
                    
                    
                }.offset(x:-90,y:-55)
                
                
                
                VStack{
                    
                    Text("Password")
                        .font(Font.custom("Skranji", size: 14)).offset(x:-130,y:-10)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(width: 340, height: 55)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }.offset(y:-20)
                
                VStack{
                    
                    
                    NavigationLink(destination: MessageView())
                    {
                        Text("Register")
                    }
                    .font(.custom("Mongolian Baiti", size: 27))
                    .foregroundColor(Color.white)
                    .frame(width: 288
                           , height:60
                    )
                    .background(Color(red: 187/255, green: 138/255, blue: 82/255))
                    .cornerRadius(40
                    )
                    .padding(15)
                    .shadow(radius: 25)
                    .offset(y:10)
                    
                    
                }
                
            }
            
        }
    }
}

#Preview {
    SignUpView()
}
