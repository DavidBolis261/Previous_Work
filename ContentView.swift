//
//  ContentView.swift
//  test3
//
//  Created by David Bolis on 16/10/19.
//  Copyright © 2019 davidBolis. All rights reserved.
//

import SwiftUI
//Welcome back to a brand new episode of mastering programming, in todays episode we will be building the TabsView that you are seeing in front of you
// and we will be learning about how to customise the view and also possible applications for a tabs view

struct ContentView: View {
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor.gray
    }
    
     
    @State var selected = 0
    var body: some View {
        
        TabView(selection: $selected) {
            
            
            Text("I am the first view ").frame(width: 300, height: 300, alignment: .center).background(Color.red)
                .tabItem {Image(systemName: "gamecontroller")
                    Text("Play")
            }.tag(0)
            
            
            
            SwiftUIView().tabItem {
                Image(systemName: "tv")
                Text("watch")
            }.tag(1)
            
            
            ExtractedView()
        }.accentColor(Color.green)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct ExtractedView: View {
    @State private var isFlipped = true
    var body: some View {
        Text("I know It's Cool")
            .font(.callout)
            .fontWeight(.regular)
            .foregroundColor(Color.green)
            .frame(width: 300, height: 60, alignment: .center)
            .background(Color.purple)
            .cornerRadius(13)
            .padding()
            .shadow(color: .black, radius: 4, x: 2.0, y: 2.0)
            .grayscale(isFlipped ?  5.0 : 10.0 )
            .hueRotation(/*@START_MENU_TOKEN@*/Angle(degrees: 90)/*@END_MENU_TOKEN@*/)
            .scaleEffect(isFlipped ? 0.5 : 2.0)
            .rotation3DEffect(Angle(degrees: isFlipped ? 0 : 720), axis: (x: 5.0, y: 5.0, z: 5.0))
            .gesture(TapGesture().onEnded{
                withAnimation(.spring(response: 2.0, dampingFraction: 1.0, blendDuration: 1)){
                    self.isFlipped.toggle()
                    
                    
                }
            })
            .tabItem {Image(systemName: "square.and.arrow.up")
                Text("Share")
                
        }.tag(2)
    }
}
