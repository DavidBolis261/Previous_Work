import random


# In this tutorial we will show you how to Create a guessing Game.
# Rules of the game
# 1. Users get 3 lives and then the program ends.
# 2. The game has three Levels.
# level1 = 0 - 10
# level2 = 0 - 20
# level3 = 0 - 30



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
