# Compares the values of the lists, and adds the common elements  to a new list without duplicates.
a = [1, 2, 4, 1, 5, 6, 7, 8, 9, 10]
b = [2, 1, 5, 3, 6, 0, 55, 9, 10]

new_list = []

for numbers in a:
    if numbers in b:
        if numbers not in new_list:
            new_list.append(numbers)

print(new_list)
