#This code asks the user for three angles, and then checks if they create a triangle, if they do the code will print out
#what kind of triangle it is.
while 3 > 2:
    angle1 = int(input("Insert the value of the first angle: "))
    angle2 = int(input("Insert the value of the second angle: "))
    angle3 = int(input("Insert the value of the third angle: "))
    Sum = angle1 + angle2 + angle3
    if Sum >= 180:
        if angle1 == angle2 == angle3:
            print("This triangle is equilateral")
        elif angle1 != angle2 == angle3 or angle1 == angle2 != angle3 or angle1 == angle3 != angle2:
            print("This triangle is Isosceles")
        else:
            print("This triangle is Scalene")
    else:
        print("These angles don't form a Triangle ")
    endLoop = input("Do you wish to try again? Y = yes, N = No: ")
    if endLoop == "N" or endLoop == "n":
        break
#EndOfFile
