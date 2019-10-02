# Alright so in this excercise we need to do the following.
# Identify the type of triangle based in the angles provided by the user.
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
