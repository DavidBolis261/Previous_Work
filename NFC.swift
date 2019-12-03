//
//  ViewController.swift
//  NFCAPPTEST3
//
//  Created by RnD Taggle on 23/10/19.
//  Copyright © 2019 RnD Taggle. All rights reserved.
//  This file recieves the NDF Data from a file called TestModel.swift. Which has a class called modely

import UIKit
import CoreNFC
import Foundation




class ViewController: UIViewController, NFCNDEFReaderSessionDelegate {
    
    @IBOutlet weak var themess: UITextView!
    
   
   
    var nfcSession: NFCNDEFReaderSession?
    
    
    @IBAction func ScanPressed(_ sender: Any) {
        nfcSession = NFCNDEFReaderSession.init(delegate: self, queue: nil, invalidateAfterFirstRead: true)
        nfcSession?.begin()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        print("The session was invlidated: \(error.localizedDescription)")
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        var result = ""
        for payload in messages[0].records{
            print("-> \(payload)")
            result += String.init(data: payload.payload.advanced(by: 3), encoding: .ascii) ?? "Format not supported"
        }
        DispatchQueue.main.async {
            self.themess.text = result
            
        }
        
        
        
    }
 
    
   
        
        
        
        
    }
    
    
}

