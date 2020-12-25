//
//  SlideView.swift
//  UI-84
//
//  Created by にゃんにゃん丸 on 2020/12/25.
//

import SwiftUI

struct SlideView: View {
    var screen = NSScreen.main!.visibleFrame
    @State var selected = "Exploler"
    @Namespace var animation
    
    var body: some View {
        VStack{
            
            HStack{
                
                Image("in")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                
                Text("Rogo")
                    .font(.custom("War Boreau", fixedSize: 20))
                
                Spacer()
                
                
            }
            .padding()
            .padding(.top)
            
            
           
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(5)
                    .background(Circle().stroke(gradient,lineWidth: 2))
                    .clipShape(Circle())
            
            Text("Girl")
                .font(.title)
                .foregroundColor(.blue)
            
            Text("@Girl")
                .foregroundColor(.gray)
            
            HStack{
                
                
                VStack(spacing:5){
                    
                Text("150")
                    .foregroundColor(.white)
                Text("Posts")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                
                
                VStack(spacing:5){
                    
                Text("10000")
                    .foregroundColor(.white)
                Text("Follower")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                
                
                VStack(spacing:5){
                    
                Text("0")
                    .foregroundColor(.white)
                Text("Following")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    
                }
                .frame(maxWidth: .infinity)
                
                Divider()
            }
            .frame(height: 50)
            
            
            Group{
                TabButton(image: "rectangle.3.offgrid", title: "Exploler", selected: $selected, animation: animation)
                    .padding(.top,20)
                
                TabButton(image: "magnifyingglass.circle.fill", title: "Feed", selected: $selected, animation: animation)
                
                TabButton(image: "bell", title: "Notification", selected: $selected, animation: animation)
                
                TabButton(image: "play.tv", title: "IGTV", selected: $selected, animation: animation)
                
                TabButton(image: "gear", title: "Settings", selected: $selected, animation: animation)
                
                TabButton(image: "paperplane.fill", title: "Direct", selected: $selected, animation: animation)
                
            }
            
            
            Spacer()
            
            Divider()
                .padding(.horizontal,20)
            
            Spacer()
            
            TabButton(image: "tray.and.arrow.down.fill", title: "LogOut", selected: $selected, animation: animation)
                .padding(.bottom,20)
            
            
            
            
            
            
        }
        .frame(maxWidth: (screen.width / 1.4) / 3.5, maxHeight: .infinity)
        .background(BlurView())
        
    }
}
