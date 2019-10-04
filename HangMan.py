import random

#In this file, I create a simple HangMan Game
# Rules of the Game
# 1. Random word is selected from a list of words
# 2. User is informed when the word is selected and asked to provide his first guess.
# 3. If he's guess is correct The letter is displayed in the console and adds up until it forms the word.
# 4. the User only has 5 chances
# Let's Begin
words = ["dog", "monkey", "cat", "book", "love", "exams", "rocket", "space", "rain",
         "KFC"]  
letters = []  

word = words[random.randrange(len(words))] 

print("Welcome to HangMan!")  
life = 5  
while life < 30:  
    guess = input("Insert your guess: ")
    if word.__contains__(guess):  
        print("Wow You guessed this right!")  
        letters.append(guess)  
        if letters.__len__() == word.__len__():  
            print("Congratulations!!!🕺🕺🕺")
            break  
        else:  
            lettersLeft = word.__len__() - letters.__len__() 
            print("You have", lettersLeft, "Letters Left")
    else:
        life -= 1  
        if life == 0: 
            print("GameOver! The word was ->", word)
            break
        else:
            print("OOOPs, You have ", life,
                  " lives left, Try Again!")  

#EndOfFile
                  
            
