//
//  Search.swift
//  TrendyCloths
//
//  Created by User on 2024-04-02.
//

import SwiftUI

struct Search: View {
    @State private var search: String = ""

    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(radius: 15)
                .frame(width: 300, height: 55)
                .offset(x:-29,y:-140)
        
            Image(systemName:"line.3.horizontal.decrease.circle.fill")
                .resizable()
                .foregroundColor(Color(red: 187/255, green: 138/255, blue: 82/255))
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width:45 ,height:40).offset(x:160,y: -140)
            
            
          
                HStack{
                    Image(systemName:"magnifyingglass.circle.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .scaledToFill()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width:33 ,height:30)
                    
                    
                    TextField("What are you looking for", text: $search).font(.custom("AmericanTypewriter", size: 15))
                        .foregroundColor(Color.gray).bold()
                }.offset(x:28,y:-140).padding(.horizontal,5)
            
        }
    }
}

#Preview {
    Search()
}
