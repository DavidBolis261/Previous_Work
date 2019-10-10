//This file contains a function which swaps the first and last characters in a given String.

func charswap(word: String, position1: Int, position2: Int) -> String {
    var Enhancedword = Array(word)
    Enhancedword.swapAt(position1, position2)
    return String(Enhancedword)
    
}
let word = "DavidboliS"  //Identify the word here
print(charswap(word: word, position1: 0, position2: 9)) //Remember to use the same parameters.

//EndOfFile
