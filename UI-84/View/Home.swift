//
//  Home.swift
//  UI-84
//
//  Created by にゃんにゃん丸 on 2020/12/24.
//

import SwiftUI

let gradient = LinearGradient(gradient: .init(colors: [.red,.purple]), startPoint: .leading, endPoint: .trailing)

struct Home: View {
    
    var screen = NSScreen.main!.visibleFrame
    
   
    
    
    var body: some View {
        HStack{
            
            SlideView()
           
            
            MainView()
            
            
            
        }
        
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width / 1.4, height: screen.height - 60)
        .background(BlurView())
       .preferredColorScheme(.light)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
