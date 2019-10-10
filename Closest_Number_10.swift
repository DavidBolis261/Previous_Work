//This file contains a function which acceptes two numbers and then shows which one is closer to 10.
//THIS IS A SWIFT FILE

func closer2_10( _ a: Int , _ b: Int) -> Int {
    
    if a > b
    {
     
        return a
    }
    else if b > a
    {
        
        return b
    }
    else
    {
        return 0
    }
}

var biggerNumber = closer2_10(8, 13)
print(biggerNumber, "is closer to ten ")

//EndOfFile
