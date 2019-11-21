//
//  ContentView.swift
//  NAvigationRemove
//
//  Created by David Bolis on 21/11/19.
//  Copyright © 2019 davidBolis. All rights reserved.
//
//ALERT: Check my tutorial for more description.
// Link - https://youtu.be/-b25j7M7ehk
import SwiftUI


//This code will generate two buttons, each button is placed inside a separate NavigationLink, with the destination being the
// other view name, (for example, the name of this struct is ContentView().). Everything must be inside a NavigationView for 
//this to work.
//Make sure you create your own SwiftUI views before trying to pass them.

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: FirstView()){ //FirstView() is the name of the other Struct
                     Text("To First View")
                        .frame(width: 150, height: 150, alignment: .center)
                        .background(Color.red)
                }
                .padding()
                NavigationLink(destination: SecondView()){ //SecondView() is the name of the other Struct
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
//EndOfFile
//THANK YOU
