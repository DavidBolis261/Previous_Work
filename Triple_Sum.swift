// This File contains a function which calculates the sum of two numbers, however if the two numbers are of the same value
// the functino returns the triple of the sum. 3 *(Sum)

func triple_Sum(a: Int, b: Int) -> Int {
    var sum = Int()
    if a != b {
       sum = a + b
    } else if a == b{
        sum = 3*(a + b)
    }
    
    return sum
    
    //In order to use this function, you simply need to call it and pass in the parameters.
    
    print(triple_sum(a: 5, b: 3))
    print(triple_sum(a: 2, b: 3))
    print(triple_sum(a: 3, b: 3))
    
    
    //EndOfFile
