//
//  FireBaseFunctions.swift
//  Studio1B
//
//  Created by David Bolis on 16/4/20.
//  Copyright © 2020 davidBolis. All rights reserved.
//

import Foundation
import Firebase




struct FireBaseF{
    
    //The following Function will allow you to collect information from FireStore (FireStore is the name of the Database google uses.)
    func GetInfo(){
        //First we create a reference to the database, i will use db for short...
        let db = Firestore.firestore() //This will be our reference
        //Now we will start looking into a collection in the database, in this example my collection is called "Users"
        db.collection("Users").getDocuments{ (snap, err) in
            if err != nil{
                print((err?.localizedDescription)!)
                return
            }
            //line 23 to 25 is only there for error handling
            for i in snap!.documents{ //This line will make you go throughout the entire database.
                if i.documentID == Auth.auth().currentUser!.uid{ //This line will let only show you the data for the current USer using the app, this is usefill in some cases.
                    //removing line 29 will mean that you will be able to request all the data on the database, and not just that belonging to the user (Could be dangerous but useful in some scenarios, for example requesting menu items. )
                    let Username = i.get("UserName") as! String  // Now we successfully retreived the username of the current User
                    let ProfilePic = i.get("ProfilePic") as! String // Now we also retreived the Profile Pic of the current User.
                    print(Username, ProfilePic)
                }
                
            }
        }
    }
    
    // The following functions will allow you to 'post' or update info in the database.
    func UpdateInfo(){
        // it is very simple to make an update or add fields in the database. Please note that if the location or field does not exist, this function will create it, if it does in fact exist, it will override it!!!
        //Again we reference the database
        let db = Firestore.firestore()
        db.collection("Users").document().setData(["UserName" : "DavidBolis261"]) //This is legit it, now when this function is called, we will create a field called UserName and that field is going to carry the value of DavidBolis261
        
        
    }
    
    
    
    
    
    
    
    
    
}
