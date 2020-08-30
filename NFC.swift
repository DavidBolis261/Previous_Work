

import UIKit
import CoreNFC // Import This In Order To Work With NFC.
import Foundation




class ViewController: UIViewController, NFCNDEFReaderSessionDelegate {
    
    @IBOutlet weak var themess: UITextView! //This is the TextView which Will Present the NFC Message on the Tag.
    
    var nfcSession: NFCNDEFReaderSession? // Allows us to call and start the NFC Reader Session allowing us to communicate with the Tag.
    
    
    @IBAction func ScanPressed(_ sender: Any) { // The Button which allows us to call the NFC Reader Session Declared on line 20.
        nfcSession = NFCNDEFReaderSession.init(delegate: self, queue: nil, invalidateAfterFirstRead: true)
        nfcSession?.begin() // Begins the session from line 24   
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) { //NFC Function
        print("The session was invlidated: \(error.localizedDescription)")
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) { // NFC Function
        var result = ""
        for payload in messages[0].records{ 
            print("-> \(payload)") //Prints the Entire NFC Payload on the Tag.
            result += String.init(data: payload.payload.advanced(by: 3), encoding: .ascii) ?? "Format not supported"
            //Result is now assigned the NFC Message from the Payload.
        }
        DispatchQueue.main.async {
            self.themess.text = result // Pastes the Result in the Text View Declared in line 18.
            
        }   
      }
    }
}

