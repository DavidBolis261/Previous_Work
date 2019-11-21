//
//  ContentView.swift
//  NAvigationRemove
//
//  Created by David Bolis on 21/11/19.
//  Copyright © 2019 davidBolis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: FirstView()){
                     Text("To First View")
                        .frame(width: 150, height: 150, alignment: .center)
                        .background(Color.red)
                }
                .padding()
                NavigationLink(destination: SecondView()){
                     Text("To Second View")
                        .frame(width: 150, height: 150, alignment: .center)
                        .background(Color.black)
                }
                
                
                
                
                
            }
        }
        
        
        
        
       
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
