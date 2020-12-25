//
//  PostView.swift
//  UI-84
//
//  Created by にゃんにゃん丸 on 2020/12/25.
//

import SwiftUI

struct PostView: View {
    
    var image : String
    var body: some View {
        GeometryReader{ reader in
            
            VStack(spacing:20){
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: reader.frame(in: .global).width, height: 250)
                    .cornerRadius(10)
                
                
                HStack{
                    
                    
                    Image("pic")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(5)
                        .background(Circle().stroke(gradient,lineWidth: 2))
                        .clipShape(Circle())
                    
                    Text("Girl")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    
                    Spacer(minLength: 0)
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label(
                            title: { Text("1000") },
                            icon: { Image(systemName: "suit.heart") })
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label(
                            title: { Text("50") },
                            icon: { Image(systemName: "paperplane.fill") })
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    
                }
                .padding(.horizontal)
                .offset(y: -10)
               
                
              
                
            }
            
            
            
        }
        .frame(height: 300)
        
        
    }
}

