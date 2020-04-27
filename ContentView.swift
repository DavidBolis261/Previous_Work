//
//  ContentView.swift
//  YoutubeTut
//
//  Created by David Bolis on 27/4/20.
//  Copyright © 2020 David Bolis. All rights reserved.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State var UserName = ""
    @State var UserAge = 25
    @State var UserGender = 1
    
    
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            VStack( alignment: .center, spacing: 40){
                Text("Create Your Account!").font(.title).bold().foregroundColor(Color.orange)
                    .shadow(color: .gray, radius: 1, x: 1.6, y: 1.6)
                VStack(alignment: .center, spacing: 5){
                    
                    Text("Insert Your UserName Below!").foregroundColor(Color.orange).bold()
                        .shadow(color: .gray, radius: 1, x: 1.6, y: 1.6)
                    TextField("DavidBolis261", text: $UserName)
                        .frame(width: UIScreen.main.bounds.width - 60, height: 50)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: .gray, radius: 1, x: 1.5, y: 1.5)
                }
                
                VStack(){
                    Text("Select Your Age!")
                        .font(.body)
                        .foregroundColor(.orange)
                        .bold()
                        .shadow(color: .gray, radius: 1, x: 1.6, y: 1.6)
                        .padding()
                    
                    Stepper(value: $UserAge, in: 16...100)
                    {
                        Text("\(UserAge) years old!")
                    }.foregroundColor(.white)
                }
                VStack{
                    Text("Select Your Gender")
                        
                        .foregroundColor(.orange)
                        .bold()
                        .shadow(color: .gray, radius: 1, x: 1.6, y: 1.6)
                        .offset(x: 0, y: 60)
                    Picker(selection: $UserGender, label: Text("Gender")
                        .foregroundColor(Color.blue)
                    ){
                        Text("Male").tag(1)
                        Text("Female").tag(2)
                        
                    }.labelsHidden()
                }
                Button(action: {
                    self.AddInfo(UserName: self.UserName, UserAge: self.UserAge, Gender: self.UserGender)
                }) {
                    Text("Register")
                        .frame(width: 100, height: 30, alignment: .center).background(Color.orange).foregroundColor(Color.white).cornerRadius(10)
                }
                
            }
        }
    }
    func AddInfo(UserName: String, UserAge: Int, Gender: Int){
        let db = Firestore.firestore()
        db.collection("Customers").document().setData(["UserName": UserName, "UserAge": UserAge, "Gender": Gender])
        
    }
    
    
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
