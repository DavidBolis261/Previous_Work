import random


#Generates a random Number, and asks the user to guess what the Number is. I made two versions of the game. 
#Note: The first version was not entirely mine as I used some pieces of the code from someone else.


#First Version
n = random.randint(1, 99)
guess = int(input("Enter an integer from 1 to 100: "))
while n != "guess":
    if guess < n:
        print("guess is low")
        guess = int(input("Enter an integer from 1 to 99: "))
    elif guess > n:
        print("guess is high")
        guess = int(input("Enter an integer from 1 to 99: "))
    else:
        print("you guessed it!")
        break

#Second Version
# Range = 1
# level = 1
# life = 3
# while 1 > 0:
#     randomNumber = random.randint(1, Range)
#
#     print("This is level 1")
#     guess1 = int(input("Enter your guess: "))
#     if guess1 == randomNumber:
#         print("Congrats!!!")
#         randomNumber = 5
#     else:
#         print("Wrong choice mate!")
#         life -= 1
#     if life == 0:
#         print("Game Over!")
#         break
#
#     print("This is Level 2")
#     guess2 = int(input("Enter your guess: "))
#     if guess2 == randomNumber:
#         print("Congrats!")
#     else:
#         print("Wrong Choice Mate!")
#         life -= 1
#     if life == 0:
#         print("Game Over!")
#         break
#
#     print("This is Level 3")
#    
#     guess3 = int(input("Enter your guess: "))
#     if guess3 == randomNumber:
#         print("Congrats! You just finished the whole game")
#         break
#     else:
#         print("Wrong Choice Mate!")
#         life -= 1
#     if life == 0:
#         print("Game Over!")
#         break


#EngOfFile
