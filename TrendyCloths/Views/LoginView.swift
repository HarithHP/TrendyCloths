//
//  LoginView.swift
//  TrendyCloths
//
//  Created by User on 2024-04-02.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView{
            
            ZStack {
                
                Rectangle().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).foregroundColor(.brown)
                    .frame(width: 393, height:300).offset(y:-230)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(width: 340, height: 55)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .offset(y:135)
                
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .frame(width: 340, height: 55)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .offset(y:30)
                
                VStack{
                    
                    Text("Welcome Back !")
                        .font(.custom("AmericanTypewriter", size: 24))
                        .foregroundColor(Color.white)
                        .frame(width: 308, height: 132)
                        .offset(x:-85,y:-265)
                    
                    Text("Yay! You're back! Thanks for shopping with us.We have excited deals and promotions going on, grab your pick now")
                        .font(Font.custom("Skranji", size: 14))
                        .foregroundColor(Color.white)
                        .frame(width: 364.3)
                        .offset(y: -280)
                    Text("Log In")
                        .font(Font.custom("AmericanTypewriter", size: 32))
                        .foregroundColor(Color.white).bold()
                        .offset(x:-125,y:-245)
                    
                }
                
                
                VStack{
                    
                    VStack{
                        
                        Text("Email Address")
                            .font(Font.custom("Skranji", size: 14)).offset(x:-120,y:-10)
                        
                        HStack{
                            
                            Image(systemName: "mail")
                                .resizable()
                                .frame(width: 20, height: 18)
                                .foregroundColor(Color.gray)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            
                            TextField("Email",text: $email)
                                .font(.custom("Inter", size: 18))
                                .foregroundColor(Color.gray).offset(x:20)
                            
                            
                        }.offset(x:-110,y:310)
                        
                    }.offset(y:355)
                    
                   
                    
                    Spacer()
                    
                    VStack{
                        
                        Text("Password")
                            .font(Font.custom("Skranji", size: 14)).offset(x:-130,y:-65)
                        
                      
                    }.offset(y:-40)
                    
                    HStack{
                        
                        Image(systemName: "lock")
                            .resizable()
                            .frame(width: 20, height: 18)
                            .foregroundColor(Color.gray)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        
                        TextField("Password",text: $password)
                            .font(.custom("Inter", size: 18))
                            .foregroundColor(Color.gray).offset(x:20)
                        
                        
                    }.offset(x:-90,y:-85)
                    
                    
                    HStack{
                        
                        Text("Remember me")
                            .font(Font.custom("Skranji", size: 12))
                            .foregroundColor(Color.black)
                            .frame(width: 364.3)
                            .offset(x:80)
                        
                        
                        Text("Forget Password ?")
                            .font(Font.custom("Skranji", size: 12))
                            .foregroundColor(Color.black)
                            .frame(width: 364.3)
                            .offset(x:-80)
                        
                    }.padding().offset(y:-60)
                    
                    VStack{
                        
                        
                        NavigationLink(destination: CheckoutView())
                        {
                            Text("login")
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
                        .offset(y:-50)
                        
                        
                    }
                    
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LoginView()
}
