//
//  MainView.swift
//  UI-84
//
//  Created by にゃんにゃん丸 on 2020/12/25.
//

import SwiftUI

struct MainView: View {
    
    @State var txt = ""
    
    @State var currentfeed = "Latest"
    var body: some View {
        
        
        ScrollView {
            VStack{
                
                HStack{
                    
                    TextField("Search", text: $txt)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.vertical)
                        .padding(.horizontal)
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(20)
                    
                    
                    Button(action: {}) {
                        
                        
                        Label {
                            Text("Add to Photos")
                            
                        } icon: {
                            
                            Image(systemName: "plus.square.fill")
                            
                        }
                        .foregroundColor(.white)
                        .padding(.vertical,10)
                        .padding(.horizontal,10)
                        .background(gradient)
                        .cornerRadius(10)

                        
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    
                }
                .padding(.horizontal)
                .padding(.top,20)
                
                
               Text("Story")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal)
                
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                  
                    
                    HStack(spacing:15){
                        
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "plus")
                                .font(.title)
                                .frame(width: 55, height: 55)
                                .foregroundColor(.white)
                                .background(Color.orange)
                                .clipShape(Circle())
                                
                                
                                
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        
                        ForEach(1...6,id:\.self){index in
                            
                            Image("p\(index)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 55, height: 55)
                                .padding(5)
                                .clipShape(Circle())
                                .background(Circle().stroke(gradient,lineWidth: 2))
                                .clipShape(Circle())
                            
                            
                        }
                        
                        
                    }
                    .padding()
                    
                })
                
                HStack(alignment:.top){
                        
                        Text("Feeds")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        ForEach(["Latest","popular"],id:\.self){type in
                            Button(action: {
                                withAnimation{currentfeed = type}
                                
                            }, label: {
                                
                                VStack(spacing:5){
                                    
                                    Text(type)
                                        .foregroundColor(currentfeed == type ? .red: .gray)
                                    ZStack{
                                        
                                        Circle()
                                            .fill(Color.clear)
                                            .frame(width: 5, height: 5)
                                        
                                        if currentfeed == type{
                                            
                                            Circle()
                                                .fill(Color.white)
                                                .frame(width: 5, height: 5)
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    
                                    
                                }
                                
                            })
                            .buttonStyle(PlainButtonStyle())
                            
                            
                        }
                        
                        
                        
                        
                        
                    }
                .padding(.horizontal)
                    .padding(.top,8)
                
                LazyVGrid(columns:Array(repeating:GridItem(.flexible(),spacing:15),count:2),content:{
                    
                    
                    ForEach(1...9,id:\.self){index in
                        
                        PostView(image: "post\(index)")
                        
                        
                    }
                    
                    
                })
                .padding()
                
                
                
                   
                    
               
               
                
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("main"))
    }
}

