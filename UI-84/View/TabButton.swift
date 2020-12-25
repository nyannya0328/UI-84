//
//  TabButton.swift
//  UI-84
//
//  Created by にゃんにゃん丸 on 2020/12/24.
//

import SwiftUI

struct TabButton: View {
    
    var image : String
    var title : String
    @Binding var selected : String
    var animation : Namespace.ID
    var body: some View {
        Button(action: {
            withAnimation(.spring()){selected = title}
            
            
        }, label: {
            HStack{
                
                Image(systemName: image)
                    .font(.system(size: 25))
                    .foregroundColor(selected == title ? Color.orange : Color.blue)
                    .frame(width: 60, height: 100)
                
                Text(title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                ZStack{
                    
                    
                    Capsule()
                        .fill(Color.clear)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                    
                    if selected == title{
                        
                        Capsule()
                            .fill(Color.purple)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                        
                    }
                }
                .frame(width: 3, height: 35)
                
                
            }
            .padding(.leading)
        })
        .buttonStyle(PlainButtonStyle())
    }
}


