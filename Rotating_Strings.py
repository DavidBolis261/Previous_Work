# This file contains a function which takes in a string from the user and rotates that string to the right and to the left.
# The degree of rotation is also taken from the user, for example if the user inserts 3, then the characters will 
# rotate 3 times

def rotate(word, d): #I chose to call the function rotate, but you can call it anything you wish :)
    Lfirst = word[0: d]
    Lsecond = word[d:]
    Rfirst = word[0: len(word) - d]
    Rsecond = word[len(word) - d:]
    print("Normal Word:", word)
    print("Left Rotation : ", (Lsecond + Lfirst))
    print("Right Rotation : ", (Rsecond + Rfirst))

# This code works but in order to use it, you have to call the function and pass the correct parameters like this ->

rotate("wordtoberotated", 3)

# will move everything 3 characters to the right and 3 to the left.
