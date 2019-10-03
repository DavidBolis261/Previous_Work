
#Asks The User for Input then classifies the user input as Even or Odd.
i = 0
while i < 3:
    number = int(input("Enter a number to check if it's even or odd: "))
    answer = number % 2
    if answer == 0:
        print(number, "Is an even Number ")
    else:
        print(number, "Is an odd Number ")
    i += 1
#EndOfFIle
