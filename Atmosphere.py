
#The Following code recieves input from the user and then classifies what atmosphere that altitude belongs to.

#!!!You have to comment one of the versions in order for this code to work.
# Simple Version
 Altitude = int(input("Insert an altitude: "))
if 0 < Altitude <= 17:
    print("This Altitude belongs to the  Troposphere")
elif 17 < Altitude <= 60:
    print("This Altitude belongs to the Stratosphere")
elif 60 < Altitude <= 120:
    print("This Altitude belongs to the Mesosphere")
elif Altitude < 0:
    print("Out of Range")
else:
    print("This Altitude belongs to the Thermo and Exosphere")


# I want the user to ask as many times as they can. So I will do the following
#More Complicated Version
while 3 > 2:
    Altitude = int(input("Insert an altitude: "))
    if 0 < Altitude <= 17:
        print("This Altitude belongs to the  Troposphere")
    elif 17 < Altitude <= 60:
        print("This Altitude belongs to the Stratosphere")
    elif 60 < Altitude <= 120:
        print("This Altitude belongs to the Mesosphere")
    elif Altitude < 0:
        print("Out of Range")
    else:
        print("This Altitude belongs to the Thermo and Exosphere")
    endloop = input("Do you wish to Continue? Y = Yes, N = No: ")
    if endloop == "N" or endloop == "n":
        break
