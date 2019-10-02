# In this tutorial we will be looking at three university level programming questions and how to solve them.
# some HighSchools will also feature some of these questions in their exams

# Show a photo of the question

# Altitude = int(input("Insert an altitude: "))
# if 0 < Altitude <= 17:
#     print("This Altitude belongs to the  Troposphere")
# elif 17 < Altitude <= 60:
#     print("This Altitude belongs to the Stratosphere")
# elif 60 < Altitude <= 120:
#     print("This Altitude belongs to the Mesosphere")
# elif Altitude < 0:
#     print("Out of Range")
# else:
#     print("This Altitude belongs to the Thermo and Exosphere")

# Start off showing them what it is in simple form then introduce the while loop.
# I want the user to ask as many times as they can. So I will do the following

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
