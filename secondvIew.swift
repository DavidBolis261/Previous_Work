//
//  SwiftUIView.swift
//  test3
//
//  Created by David Bolis on 16/10/19.
//  Copyright © 2019 davidBolis. All rights reserved.
//

import SwiftUI

 struct SwiftUIView: View {

    @State private var Ocolor = Color.blue
    @State private var OCorner: CGFloat = 12
    
    public var body: some View {
        VStack {
                  
               
                  Button(action: {
                      self.Ocolor = self.Ocolor == Color.blue ? Color.green : Color.blue
                      self.OCorner = self.OCorner == 12 ? 100 : 12
                      
                  }){
                  Text("SecondTab")
                      .foregroundColor(.red)
                      .frame(width: 200, height: 200, alignment: .center)
                      .background(Ocolor)
                      .font(.title)
                      .cornerRadius(OCorner)
                      

                  }
              }.animation(.spring(response: 0.5, dampingFraction: 2, blendDuration: 0.5))
          }}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
