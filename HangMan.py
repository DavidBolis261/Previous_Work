import random

# Welcome Back to a new Episode of Mastering Programming, today we will create a simple Hangman Game.
# Rules of the Game
# 1. Random word is selected from a list of words
# 2. User is informed when the word is selected and asked to provide his first guess.
# 3. If he's guess is correct The letter is displayed in the console and adds up until it forms the word.
# 4. the User only has 5 chances
# Let's Begin
words = ["dog", "monkey", "cat", "book", "love", "exams", "rocket", "space", "rain",
         "KFC"]  # So I am going to declare two lists, one carrying the words
letters = []  # and will use this one later on

word = words[random.randrange(
    len(words))]  # for now our word is going to be set to dog, but later on I will make it randomly selected

# show them first without a while,
# then show with


print("Welcome to HangMan!")  # First of all ,Let's welcome the player
life = 5  # We will have 5 chances of guessing incorrectly
while life < 30:  # I am just going to declare a never false statement
    guess = input("Insert your guess: ")
    if word.__contains__(guess):  # The contains is used to check if the string containts 'guess'
        print("Wow You guessed this right!")  # if it does, we tell the user
        letters.append(guess)  # and append that letter to a list
        if letters.__len__() == word.__len__():  # Since we add a letter everytime we guess the letter correct, if the word is complete then
            # the lenth of our list should be the same as the length of word. That's what this if statement.
            print("Congratulations!!!🕺🕺🕺")
            break  # if it's true, then the player won the game and the while loop will stop running.
        else:  # if the player still did not win, continue playing but first let's inform the player how many letters are left.
            lettersLeft = word.__len__() - letters.__len__()  # to calculate how many letters are left, we will subtract
            # the number if letters added, by the letters in the word.
            print("You have", lettersLeft, "Letters Left")
    else:
        life -= 1  # Now to reduce the life, we will simply run this code whenever that first statement is false
        if life == 0:  # if we don't have any more life, we say GameOver! and break the loop to end the game
            print("GameOver! The word was ->", word)
            break
        else:
            print("OOOPs, You have ", life,
                  " lives left, Try Again!")  # But if we only lost, without losing all our chances, we play another round.
