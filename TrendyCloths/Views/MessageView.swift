//
//  MessageView.swift
//  TrendyCloths
//
//  Created by User on 2024-04-03.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        NavigationView{
            ZStack
            {
                Image("423-4236284_png-images-success-icon-png-transparent-png-download")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width:300 ,height:85)
                    .offset(y:-130)
                
                
                VStack
                
                {
                    
                    Text("Successfully Completed")
                        .font(.custom("AmericanTypewriter", size: 25))
                        .foregroundColor(Color.green).bold()
                        .frame(width: 308, height: 115)
                        .offset(y: 150)
                    
                    
                    Text("You're order placed successfully")
                        .font(.custom("AmericanTypewriter", size: 18))
                        .foregroundColor(Color.black)
                        .frame(width: 308, height: 115)
                        .offset(y:70)
                
                    
                    NavigationLink(destination: HomeUIView())
                    {
                        Text("Back to Home")
                        
                    }.offset(y:50).bold().foregroundColor(.blue)
                    
                    
                }
            }
            
            
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MessageView()
}
