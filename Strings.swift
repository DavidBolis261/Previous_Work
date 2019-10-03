import UIKit
//Welcome Back To a new Episode of Mastering Programming, Today we will have a deeper dive into Strings and different kind of things we can do with them.
//We already had a look at strings and different data types and how to declare them, but today we will have a better look at strings specifically.
//First a quick Revision.
//to Declare a String as a variable
var name = "David" //Can Change

//as a constant
let lastName = "Bolis" //Cannot change

//Let's see how we can do more than one line such as a paragraph
//you simply declare in the same way
let paragraph = """
anything after the triple quotation will be considered as a string, and will be stored in (paragraph).
"""
//Next, we have skipping lines in strings and they are actually much easier than you expect
let lineskipping = "David \nBolis"
//print(lineskipping) // As you can see it got printed on two different lines.


//But what if you actually wanted to print (\n)
//This is how to do it
let sameline = #" David \n Bolis"# //anything inside the hashtag acts like a normal text, regardless of their meaning






//Next, Let's see how we can customize our string appearance
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let badwords = "Imagination is worse than knowledge" //- Einstein
//print(wiseWords)
//print(badwords)

// Unique Initilization of Strings
//As you know we can declare an empty string by doing the following
var Emptystring: String //This will show an error if you attempt to use it.
//But we can also do the following
var emptyString = ""
 //This one won't show an error

// I will just show you something cool to do if you ever want to check if your string object is empty.
if emptyString.isEmpty{
    //print("emptyString is indeed empty")
} else {
    //print(emptyString)
}






//Finally I will show you how to add and change the string

var first_lastname = "David" //So let's say I forgot my last name, and I wish to add it later on, this is how i can do it
first_lastname += " Bolis" //So as you can see, this line adds Bolis, to my first name, and hence completes the string
//print(first_lastname)


//So Now I will show you how to access the characters of a string, and even iterate through them.
//which you will discover is a very important feature.

var word = "randomword" //This works with emojis as well btw
for characters in word{ //goes through characters in word
    if characters != "m"{
      //  print(characters)  //Prints the characters inside word
    }
    
    // Let's see what to do if we want to get a particular letter.
}   // Lets see how to print everything except a particular string

// we can also see the number of letter by doing this
//print(word.count)




//Let's see how we can compare different Strings.
let firstPhrase = "Same Sentence"
let secondPhrase = "Same Sentence"
let thirdPhrase = "Different Sentence"

if firstPhrase == secondPhrase{
    print("They are the same!")
}

if firstPhrase != thirdPhrase {
    print("they are not the same")
}



