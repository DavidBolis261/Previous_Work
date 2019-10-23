import UIKit
import Foundation

func toBase64(word: String) -> String{
    let base64Encoded = word.data(using: String.Encoding.utf8)!.base64EncodedString()
    
    return base64Encoded
}

print("-> ",toBase64(word: "David, Base64"))




func fromBase64(word: String) -> String{
    let base64Decoded = Data(base64Encoded: word)!
    let decodedString = String(data: base64Decoded, encoding: .utf8)!
    
    return decodedString
}

print("-> ",fromBase64(word: "RGF2aWQsIEJhc2U2NA=="))
